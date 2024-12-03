#ifndef HDDT_NET_H
#define HDDT_NET_H

#include <hddt.h>
#include <mem.h>
#include <string>

#include <csignal>

#include <infiniband/verbs.h>
#include <rdma/rdma_cma.h>

#include <arpa/inet.h> // inet_ntoa

#define CQ_CAPACITY (16)
#define MAX_SGE (2)
#define MAX_WR (8)
#define RDMA_DEFAULT_PORT (2024)
#define BUFFER_SIZE (2048)

struct __attribute((packed)) rdma_buffer_attr {
  uint64_t address;
  uint32_t length;
  union stag {
    /* if we send, we call it local stags */
    uint32_t local_stag;
    /* if we receive, we call it remote stag */
    uint32_t remote_stag;
  } stag;
};

struct socket_addr {
  uint32_t addr;
  uint16_t port;
};

/* resolves a given destination name to sin_addr */
int get_addr(char *dst, struct sockaddr *addr);
bool support_rdma();

namespace hddt {

enum class CommunicatorType {
  DEFAULT, // Auto selection
  RDMA,
  TCP
}; // todo: more

struct ControlMessage {
  size_t flags; // notify peer the lens of data / also 0 means false
                // todo: more control message
};

/*
Communicator: P2P Transport
implemented by TCP and RDMA(libverbs)
*/
class Communicator {
protected:
  Memory *mem_op;

  static void signalHandler(int signal) {
    if (signal == SIGINT) {
      std::cout << "\nCommunicator Quit...\n";
      std::exit(0);
    }
  }

public:
  inline Communicator(Memory *mem_op) : mem_op(mem_op) {
    std::signal(SIGINT, signalHandler);
  }
  virtual inline ~Communicator() { this->mem_op->free(); }

  /**
   * @brief Send data to remote
   *
   * High level send by using RDMA Write/Read with RDMA send/recv.
   *
   * @param input_buffer The address of the user's input date buffer that
   * contains data to be sent
   * @param send_flags The lenght of the data to be sent
   *
   * @return The status code of the operation result
   *         - Returns status_t::SUCCESS if the operation is successful
   *         - Returns status_t::ERROR if the operation fails
   */
  virtual status_t Send(void *input_buffer, const size_t send_flags) = 0;

  /**
   * @brief Recv data from remote
   *
   * High level Recv by using RDMA Write/Read with RDMA send/recv.
   *
   * @param output_buffer The address of the user data buffer will be saved.
   * @param buffer_size The length of the buffer
   * @param recv_flags The lenght of data has been received
   *
   * @return The status code of the operation result
   *         - Returns status_t::SUCCESS if the operation is successful
   *         - Returns status_t::ERROR if the operation fails
   */
  virtual status_t Recv(void *output_buffer, const size_t buffer_size,
                        size_t *recv_flags) = 0;

  /**
   * @brief Start Communicator
   *
   * @return The status code of the operation result
   *         - Returns status_t::SUCCESS if the operation is successful
   *         - Returns status_t::ERROR if the operation fails
   */
  virtual status_t Start() = 0;

  /**
   * @brief Close Communicator
   *
   * @return The status code of the operation result
   *         - Returns status_t::SUCCESS if the operation is successful
   *         - Returns status_t::ERROR if the operation fails
   */
  virtual status_t Close() = 0;
};

class TCPCommunicator : public Communicator {
private:
  char *ip;
  int32_t port;
  size_t mem_size = BUFFER_SIZE;
  bool is_server = false;
  bool is_client = false;

  void *client_send_buffer;
  void *client_recv_buffer;
  void *server_send_buffer;
  void *server_recv_buffer;
  bool is_buffer_ok = false;

  int retry_times;
  int retry_delay_time;

public:
  TCPCommunicator(Memory *mem_op, bool is_server = false,
                  bool is_client = false, std::string client_ip = "",
                  uint16_t client_port = 0, std::string server_ip = "",
                  uint16_t server_port = 0, int retry_times = 10,
                  int retry_delay_time = 1000)
      : Communicator(mem_op), is_server(is_server), is_client(is_client),
        retry_times(retry_times), retry_delay_time(retry_delay_time) {
    this->allocate_buffer();
  };
  ~TCPCommunicator() { this->free_buffer(); }

  status_t Send(void *input_buffer, const size_t send_flags) override;
  status_t Recv(void *output_buffer, const size_t buffer_size,
                size_t *recv_flags) override;

  status_t Start() override;
  status_t Close() override;

private:
  // for TCP, client send data from send_buffer, recv data to recv_buffer
  status_t allocate_buffer();
  status_t free_buffer();
};

class RDMACommunicator : public Communicator {
  /*connection_type : RC, UC，UD : current only support RC*/

private:
  struct sockaddr_in server_addr;
  // remote addr (accepted client)
  struct sockaddr_in server_newconnection_addr;
  struct sockaddr_in client_addr;

  bool is_server = false;
  bool is_client = false;

  // suggest 2-8
  uint8_t initiator_depth = 8;
  uint8_t responder_resources = 8;

  // the RDMA connection identifier
  // cm: connection management
  struct rdma_cm_id *server_cm_id = NULL;
  struct rdma_cm_id *server_cm_newconnection_id = NULL;
  struct rdma_cm_id *client_cm_id = NULL;

  // queue pair
  struct ibv_qp *server_qp = NULL; // server_newconnection_qp
  struct ibv_qp *client_qp = NULL;

  // Protect Domain
  struct ibv_pd *server_pd = NULL; // server_newconnection_pd
  struct ibv_pd *client_pd = NULL;

  // Memory Region
  struct ibv_mr *server_newconnection_metadata_mr = NULL;
  struct ibv_mr *server_metadata_mr = NULL;
  struct ibv_mr *server_send_buffer_mr = NULL;
  struct ibv_mr *server_recv_buffer_mr = NULL;

  struct ibv_mr *client_newserver_metadata_mr = NULL;
  struct ibv_mr *client_metadata_mr = NULL;
  struct ibv_mr *client_send_buffer_mr = NULL;
  struct ibv_mr *client_recv_buffer_mr = NULL;
  // recv from newconnection
  struct rdma_buffer_attr server_newconnection_metadata_attr;
  // send to newconnection
  struct rdma_buffer_attr server_metadata_attr;
  // remote server
  struct rdma_buffer_attr client_newserver_metadata_attr;
  // local client
  struct rdma_buffer_attr client_metadata_attr;

  // Event Channel : report asynchronous communication event
  struct rdma_event_channel *client_cm_event_channel = NULL;
  struct rdma_event_channel *server_cm_event_channel = NULL;

  // Completion Channel
  // newconnection
  struct ibv_comp_channel *server_completion_channel = NULL;
  struct ibv_comp_channel *client_completion_channel = NULL;

  // completion queue
  // notify for receive completion operations
  struct ibv_cq *server_cq = NULL;
  struct ibv_cq *client_cq = NULL;

  // init attr
  struct ibv_qp_init_attr server_qp_init_attr;
  struct ibv_qp_init_attr client_qp_init_attr;

  size_t mem_size = BUFFER_SIZE;
  void *share_buffer;

  int retry_times;
  int retry_delay_time;
  int retry_count = 0;
  bool is_buffer_ok = false; // if buffer is allocated
  bool is_running = true;    // if the communicator is running
  bool client_can_write = true;
  bool server_can_recv = true;

  // control msg
  struct ControlMessage client_send_msg; // msg send buffer
  struct ibv_mr *client_send_msg_mr = NULL;
  struct ControlMessage client_recv_msg; // msg recv buffer
  struct ibv_mr *client_recv_msg_mr = NULL;
  struct ControlMessage server_recv_msg; // msg send buffer
  struct ibv_mr *server_recv_msg_mr = NULL;
  struct ControlMessage server_send_msg; // msg recv buffer
  struct ibv_mr *server_send_msg_mr = NULL;

public:
  RDMACommunicator(Memory *mem_op, bool is_server = false,
                   bool is_client = false, std::string client_ip = "0.0.0.0",
                   uint16_t client_port = RDMA_DEFAULT_PORT,
                   std::string server_ip = "0.0.0.0",
                   uint16_t server_port = RDMA_DEFAULT_PORT,
                   int retry_times = 10, int retry_delay_time = 1000)
      : Communicator(mem_op), is_server(is_server), is_client(is_client),
        retry_times(retry_times), retry_delay_time(retry_delay_time) {
    status_t sret;

    // init sockaddr
    if (is_client && client_ip == "0.0.0.0") { // should connect to local server
      logError("client_ip must be set for client.");
      throw std::runtime_error("Client_ip must be set for client.");
    }
    sret = this->init_sockaddr(client_ip.c_str(), client_port,
                               server_ip.c_str(), server_port);
    if (sret != status_t::SUCCESS) {
      throw std::runtime_error(
          "Failed to allocate buffer for RDMACommunicator.");
    }
    logDebug("RDMACommunicator init_sockaddr success.");

    // init buffer
    sret = this->allocate_buffer();
    if (sret != status_t::SUCCESS) {
      throw std::runtime_error(
          "Failed to allocate buffer for RDMACommunicator.");
    }
    logDebug("RDMACommunicator allocate_buffer success: %p.",
             this->share_buffer);

    if (is_server) {
      sret = setup_server();
      if (sret != status_t::SUCCESS) {
        throw std::runtime_error(
            "Failed to setup_server for RDMACommunicator.");
      }
      logDebug("RDMACommunicator setup_server success.");
    }
    if (is_client) {
      sret = setup_client();
      if (sret != status_t::SUCCESS) {
        throw std::runtime_error(
            "Failed to setup_client for RDMACommunicator.");
      }
      logDebug("RDMACommunicator setup_client success.");
    }
  };

  ~RDMACommunicator() {
    /* if forgot close, it will be force closed here. */
    if (this->is_running) {
      this->Close();
    }
  }

  /* IO Interface */

  status_t Send(void *input_buffer, const size_t send_flags) override;
  status_t Recv(void *output_buffer, const size_t buffer_size,
                size_t *recv_flags) override;

  /* Control interface */

  status_t Start() override;
  status_t Close() override;

private:
  /**
   * @brief Writes data to a remote memory address
   *
   * Uses RDMA to write data from the local buffer to a remote memory address.
   *
   * @param addr The address of the communicator' share_buffer that contains the
   * data to be written
   * @param length The length of the data to be written
   *
   * @return The status code of the operation result
   *         - Returns status_t::SUCCESS if the operation is successful
   *         - Returns status_t::ERROR if the operation fails
   */
  status_t rdma_write(void *addr, size_t length);

  /**
   * @brief Read data from a remote memory address
   *
   * Uses RDMA to read data from a remote buffer to the local memory address.
   *
   * @param addr The address of the communicator' share_buffer that contains the
   * data to be written
   * @param length The length of the data to be written
   *
   * @return The status code of the operation result
   *         - Returns status_t::SUCCESS if the operation is successful
   *         - Returns status_t::ERROR if the operation fails
   */
  status_t rdma_read(void *addr, size_t length);

  status_t send_rdma_msg(ibv_qp *qp, struct ibv_comp_channel *comp_channel,
                         ibv_mr *msg_mr);
  status_t recv_rdma_msg(ibv_qp *qp, struct ibv_comp_channel *comp_channel,
                         ibv_mr *msg_mr);

  status_t allocate_buffer();
  status_t free_buffer();

  status_t init_sockaddr(const char *client_ip, uint16_t client_port,
                         const char *server_ip, uint16_t server_port);
  status_t post_send_work_request(struct ibv_qp *qp, uint64_t sge_addr,
                                  size_t sge_length, uint32_t sge_lkey,
                                  int sge_num, ibv_wr_opcode opcode,
                                  ibv_send_flags send_flags,
                                  uint32_t remote_key = 0,
                                  uint64_t remote_addr = 0);
  status_t post_recv_work_request(struct ibv_qp *qp, uint64_t sge_addr,
                                  size_t sge_length, uint32_t sge_lkey,
                                  int sge_num);
  status_t process_rdma_cm_event(struct rdma_event_channel *echannel,
                                 enum rdma_cm_event_type expected_event,
                                 struct rdma_cm_event **cm_event);
  int process_work_completion_events(struct ibv_comp_channel *comp_channel,
                                     struct ibv_wc *wc, int max_wc);
  struct ibv_mr *rdma_buffer_register(struct ibv_pd *pd, void *addr,
                                      uint32_t length,
                                      enum ibv_access_flags permission);
  void rdma_buffer_deregister(struct ibv_mr *mr);
  void show_rdma_buffer_attr(struct rdma_buffer_attr *attr);

  status_t server_accept_newconnection();
  status_t server_send_metadata_to_newconnection();

  /**
   * @brief Set up the server side of the RDMA communicator
   *
   * Configure the server side of the RDMA communicator, including creating an
   * event channel, creating an RDMA ID, and binding the server address.
   *
   * @return Returns status_t::SUCCESS if the setup is successful, otherwise
   * returns status_t::ERROR.
   */
  status_t setup_server();
  status_t start_server();
  status_t close_server();

  /**
   * @brief Set up the client side of the RDMA communicator
   *
   * Configure the client side of the RDMA communicator, including creating an
   * event channel, creating an RDMA ID and other resources.
   *
   * @return Returns status_t::SUCCESS if the setup is successful, otherwise
   * returns status_t::ERROR.
   */
  status_t setup_client();
  status_t start_client();
  status_t close_client();
};

// Factory Function to create a communicator
[[nodiscard]] std::unique_ptr<Communicator> CreateCommunicator(
    Memory *mem_op, CommunicatorType comm_type = CommunicatorType::DEFAULT,
    bool is_server = false, bool is_client = false,
    std::string client_ip = "0.0.0.0", uint16_t client_port = RDMA_DEFAULT_PORT,
    std::string server_ip = "0.0.0.0", uint16_t server_port = RDMA_DEFAULT_PORT,
    int retry_times = 10, int retry_delay_time = 1000);

} // namespace hddt

#endif