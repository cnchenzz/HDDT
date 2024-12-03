#include <hddt.h>
#include <mem.h>

using namespace hddt;

int main() {
  /* GPU memory test */

  Memory *mem_ops = new Memory(1);
  void *addr;
  mem_ops->allocate_buffer(&addr, 1024);

  uint8_t data[] = "Hello World!\n";
  mem_ops->copy_host_to_device(addr, data, sizeof(data));

  char host[1024];
  mem_ops->copy_device_to_host(host, addr, sizeof(data));
  printf("Server get Data: %s\n", host);

  sleep(50);

  delete mem_ops;

  return 1;
}