#ifndef HDDT_H
#define HDDT_H

#ifdef ENABLE_CUDA
#include <cuda_runtime.h>
// #include <cuda.h>
#endif
#ifdef ENABLE_ROCM
#include <hip/hip_runtime.h>
#include <hsa/hsa.h>
#include <hsa/hsa_ext_amd.h>
#endif
#ifdef ENABLE_NEUWARE
#include "cn_api.h" // CNresult
#include "cnrt.h"
#include "mlu_op.h"
#endif

#include <iostream>
#include <thread>

#include <cstdlib>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <unistd.h>

#include <atomic>
#include <chrono>

#include <glog/logging.h>

namespace hddt {
/* status and log */
enum class status_t { SUCCESS, ERROR, UNSUPPORT };

const char *status_to_string(status_t status);

#define logError(fmt, ...)                                                     \
  do {                                                                         \
    char buffer[1024];                                                         \
    int len = snprintf(buffer, sizeof(buffer), fmt, ##__VA_ARGS__);            \
    if (len >= 0) {                                                            \
      LOG(ERROR) << buffer;                                                    \
    }                                                                          \
  } while (0)
#define logDebug(fmt, ...)                                                     \
  do {                                                                         \
    char buffer[1024];                                                         \
    int len = snprintf(buffer, sizeof(buffer), fmt, ##__VA_ARGS__);            \
    if (len >= 0) {                                                            \
      LOG(WARNING) << buffer;                                                  \
    }                                                                          \
  } while (0)
#define logInfo(fmt, ...)                                                      \
  do {                                                                         \
    char buffer[1024];                                                         \
    int len = snprintf(buffer, sizeof(buffer), fmt, ##__VA_ARGS__);            \
    if (len >= 0) {                                                            \
      LOG(INFO) << buffer;                                                     \
    }                                                                          \
  } while (0)

/*
gpu driver init
*/
status_t init_gpu_driver(int device_id);
status_t free_gpu_driver();

// pybind11 example code
int add(int i, int j);
class Pet {
public:
  Pet(const std::string &name) : name(name) {}
  void setName(const std::string &name_) { name = name_; }
  const std::string &getName() const { return name; }

private:
  std::string name;
};

} // namespace hddt

#endif