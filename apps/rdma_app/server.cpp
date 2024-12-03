#include <hddt.h>
#include <iostream>
#include <p2p.h>

#include <chrono>
#include <thread>

using namespace hddt;

int main() {
  status_t sret;
  // google::InitGoogleLogging("HDDT");
  // google::SetLogDestination(google::GLOG_INFO, "/tmp/today");
  FLAGS_colorlogtostderr = true;
  FLAGS_alsologtostderr = true;

  std::string client_ip = "192.168.2.251";
  std::string server_ip = "0.0.0.0";

  Memory *mem_ops = new Memory(1);
  auto con = CreateCommunicator(mem_ops, CommunicatorType::DEFAULT, true);

  sret = con->Start();
  if (sret != status_t::SUCCESS)
    return 0;

  char host_data[1024];

  void *recv;
  mem_ops->allocate_buffer(&recv, 1024);
  con->Recv(recv, 1024, 512); // 阻塞直到收到数据
  mem_ops->copy_device_to_host(host_data, recv, 512);
  printf("Server get Data: %s\n", host_data);

  con->Recv(recv, 1024, 512); // 阻塞直到收到数据
  mem_ops->copy_device_to_host(host_data, recv, 512);
  printf("Server get Data: %s\n", host_data);

  // sleep(1);
  con->Close();

  con.reset(); // 将 con 设置为 nullptr 并释放其所管理的资源
  std::cout << "Communicator released" << std::endl;
  return 0;
}