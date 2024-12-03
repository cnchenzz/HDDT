#include <hddt.h>
#include <iostream>
#include <p2p.h>

using namespace hddt;

int main() {
  // google::InitGoogleLogging("HDDT");
  // google::SetLogDestination(google::GLOG_INFO, "./today");
  status_t sret;
  FLAGS_colorlogtostderr = true;
  FLAGS_alsologtostderr = true;

  std::string client_ip = "192.168.2.251";
  std::string server_ip = "0.0.0.0";

  Memory *mem_ops = new Memory(1);
  auto con = CreateCommunicator(mem_ops, CommunicatorType::DEFAULT, false, true,
                                client_ip);

  sret = con->Start();
  if (sret != status_t::SUCCESS)
    return 0;

  uint8_t data[] = "HelloHelloHelloHelloHelloHelloHelloHello!";

  void *send;
  logDebug("allocate input buffer");
  mem_ops->allocate_buffer(&send, 1024);
  mem_ops->copy_host_to_device(send, data, sizeof(data));

  char host_data[sizeof(data)];
  mem_ops->copy_device_to_host(host_data, send, sizeof(data));
  printf("Client Write Data: %s\n", host_data);

  sleep(2); // we need to wait for the server and client to finish their setup.
  con->Send(send, sizeof(data));

  sleep(2);
  uint8_t data2[] = "ByeByeByeByeByeByeByeByeByeBye!";
  mem_ops->copy_host_to_device(send, data2, sizeof(data2));
  char host_data2[sizeof(data2)];
  mem_ops->copy_device_to_host(host_data2, send, sizeof(data2));
  printf("Client Write Data: %s\n", host_data2);
  con->Send(send, sizeof(data2));

  sleep(2);
  con->Close();
  sleep(2);
  con.reset();
  return 0;
}