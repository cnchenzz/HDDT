# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mahaoyuan/mhyHDDT/HDDT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mahaoyuan/mhyHDDT/HDDT

# Include any dependencies generated for this target.
include tests/CMakeFiles/HDDT_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/HDDT_test.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/HDDT_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/HDDT_test.dir/flags.make

tests/CMakeFiles/HDDT_test.dir/hddt_memory_test.cpp.o: tests/CMakeFiles/HDDT_test.dir/flags.make
tests/CMakeFiles/HDDT_test.dir/hddt_memory_test.cpp.o: tests/hddt_memory_test.cpp
tests/CMakeFiles/HDDT_test.dir/hddt_memory_test.cpp.o: tests/CMakeFiles/HDDT_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mahaoyuan/mhyHDDT/HDDT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/HDDT_test.dir/hddt_memory_test.cpp.o"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/HDDT_test.dir/hddt_memory_test.cpp.o -MF CMakeFiles/HDDT_test.dir/hddt_memory_test.cpp.o.d -o CMakeFiles/HDDT_test.dir/hddt_memory_test.cpp.o -c /home/mahaoyuan/mhyHDDT/HDDT/tests/hddt_memory_test.cpp

tests/CMakeFiles/HDDT_test.dir/hddt_memory_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HDDT_test.dir/hddt_memory_test.cpp.i"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mahaoyuan/mhyHDDT/HDDT/tests/hddt_memory_test.cpp > CMakeFiles/HDDT_test.dir/hddt_memory_test.cpp.i

tests/CMakeFiles/HDDT_test.dir/hddt_memory_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HDDT_test.dir/hddt_memory_test.cpp.s"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mahaoyuan/mhyHDDT/HDDT/tests/hddt_memory_test.cpp -o CMakeFiles/HDDT_test.dir/hddt_memory_test.cpp.s

tests/CMakeFiles/HDDT_test.dir/__/src/driver.cpp.o: tests/CMakeFiles/HDDT_test.dir/flags.make
tests/CMakeFiles/HDDT_test.dir/__/src/driver.cpp.o: src/driver.cpp
tests/CMakeFiles/HDDT_test.dir/__/src/driver.cpp.o: tests/CMakeFiles/HDDT_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mahaoyuan/mhyHDDT/HDDT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/HDDT_test.dir/__/src/driver.cpp.o"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/HDDT_test.dir/__/src/driver.cpp.o -MF CMakeFiles/HDDT_test.dir/__/src/driver.cpp.o.d -o CMakeFiles/HDDT_test.dir/__/src/driver.cpp.o -c /home/mahaoyuan/mhyHDDT/HDDT/src/driver.cpp

tests/CMakeFiles/HDDT_test.dir/__/src/driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HDDT_test.dir/__/src/driver.cpp.i"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mahaoyuan/mhyHDDT/HDDT/src/driver.cpp > CMakeFiles/HDDT_test.dir/__/src/driver.cpp.i

tests/CMakeFiles/HDDT_test.dir/__/src/driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HDDT_test.dir/__/src/driver.cpp.s"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mahaoyuan/mhyHDDT/HDDT/src/driver.cpp -o CMakeFiles/HDDT_test.dir/__/src/driver.cpp.s

tests/CMakeFiles/HDDT_test.dir/__/src/log.cpp.o: tests/CMakeFiles/HDDT_test.dir/flags.make
tests/CMakeFiles/HDDT_test.dir/__/src/log.cpp.o: src/log.cpp
tests/CMakeFiles/HDDT_test.dir/__/src/log.cpp.o: tests/CMakeFiles/HDDT_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mahaoyuan/mhyHDDT/HDDT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tests/CMakeFiles/HDDT_test.dir/__/src/log.cpp.o"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/HDDT_test.dir/__/src/log.cpp.o -MF CMakeFiles/HDDT_test.dir/__/src/log.cpp.o.d -o CMakeFiles/HDDT_test.dir/__/src/log.cpp.o -c /home/mahaoyuan/mhyHDDT/HDDT/src/log.cpp

tests/CMakeFiles/HDDT_test.dir/__/src/log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HDDT_test.dir/__/src/log.cpp.i"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mahaoyuan/mhyHDDT/HDDT/src/log.cpp > CMakeFiles/HDDT_test.dir/__/src/log.cpp.i

tests/CMakeFiles/HDDT_test.dir/__/src/log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HDDT_test.dir/__/src/log.cpp.s"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mahaoyuan/mhyHDDT/HDDT/src/log.cpp -o CMakeFiles/HDDT_test.dir/__/src/log.cpp.s

tests/CMakeFiles/HDDT_test.dir/__/src/mem/cuda_memory.cpp.o: tests/CMakeFiles/HDDT_test.dir/flags.make
tests/CMakeFiles/HDDT_test.dir/__/src/mem/cuda_memory.cpp.o: src/mem/cuda_memory.cpp
tests/CMakeFiles/HDDT_test.dir/__/src/mem/cuda_memory.cpp.o: tests/CMakeFiles/HDDT_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mahaoyuan/mhyHDDT/HDDT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object tests/CMakeFiles/HDDT_test.dir/__/src/mem/cuda_memory.cpp.o"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/HDDT_test.dir/__/src/mem/cuda_memory.cpp.o -MF CMakeFiles/HDDT_test.dir/__/src/mem/cuda_memory.cpp.o.d -o CMakeFiles/HDDT_test.dir/__/src/mem/cuda_memory.cpp.o -c /home/mahaoyuan/mhyHDDT/HDDT/src/mem/cuda_memory.cpp

tests/CMakeFiles/HDDT_test.dir/__/src/mem/cuda_memory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HDDT_test.dir/__/src/mem/cuda_memory.cpp.i"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mahaoyuan/mhyHDDT/HDDT/src/mem/cuda_memory.cpp > CMakeFiles/HDDT_test.dir/__/src/mem/cuda_memory.cpp.i

tests/CMakeFiles/HDDT_test.dir/__/src/mem/cuda_memory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HDDT_test.dir/__/src/mem/cuda_memory.cpp.s"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mahaoyuan/mhyHDDT/HDDT/src/mem/cuda_memory.cpp -o CMakeFiles/HDDT_test.dir/__/src/mem/cuda_memory.cpp.s

tests/CMakeFiles/HDDT_test.dir/__/src/mem/hddt_memory.cpp.o: tests/CMakeFiles/HDDT_test.dir/flags.make
tests/CMakeFiles/HDDT_test.dir/__/src/mem/hddt_memory.cpp.o: src/mem/hddt_memory.cpp
tests/CMakeFiles/HDDT_test.dir/__/src/mem/hddt_memory.cpp.o: tests/CMakeFiles/HDDT_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mahaoyuan/mhyHDDT/HDDT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object tests/CMakeFiles/HDDT_test.dir/__/src/mem/hddt_memory.cpp.o"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/HDDT_test.dir/__/src/mem/hddt_memory.cpp.o -MF CMakeFiles/HDDT_test.dir/__/src/mem/hddt_memory.cpp.o.d -o CMakeFiles/HDDT_test.dir/__/src/mem/hddt_memory.cpp.o -c /home/mahaoyuan/mhyHDDT/HDDT/src/mem/hddt_memory.cpp

tests/CMakeFiles/HDDT_test.dir/__/src/mem/hddt_memory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HDDT_test.dir/__/src/mem/hddt_memory.cpp.i"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mahaoyuan/mhyHDDT/HDDT/src/mem/hddt_memory.cpp > CMakeFiles/HDDT_test.dir/__/src/mem/hddt_memory.cpp.i

tests/CMakeFiles/HDDT_test.dir/__/src/mem/hddt_memory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HDDT_test.dir/__/src/mem/hddt_memory.cpp.s"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mahaoyuan/mhyHDDT/HDDT/src/mem/hddt_memory.cpp -o CMakeFiles/HDDT_test.dir/__/src/mem/hddt_memory.cpp.s

tests/CMakeFiles/HDDT_test.dir/__/src/mem/host_memory.cpp.o: tests/CMakeFiles/HDDT_test.dir/flags.make
tests/CMakeFiles/HDDT_test.dir/__/src/mem/host_memory.cpp.o: src/mem/host_memory.cpp
tests/CMakeFiles/HDDT_test.dir/__/src/mem/host_memory.cpp.o: tests/CMakeFiles/HDDT_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mahaoyuan/mhyHDDT/HDDT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object tests/CMakeFiles/HDDT_test.dir/__/src/mem/host_memory.cpp.o"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/HDDT_test.dir/__/src/mem/host_memory.cpp.o -MF CMakeFiles/HDDT_test.dir/__/src/mem/host_memory.cpp.o.d -o CMakeFiles/HDDT_test.dir/__/src/mem/host_memory.cpp.o -c /home/mahaoyuan/mhyHDDT/HDDT/src/mem/host_memory.cpp

tests/CMakeFiles/HDDT_test.dir/__/src/mem/host_memory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HDDT_test.dir/__/src/mem/host_memory.cpp.i"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mahaoyuan/mhyHDDT/HDDT/src/mem/host_memory.cpp > CMakeFiles/HDDT_test.dir/__/src/mem/host_memory.cpp.i

tests/CMakeFiles/HDDT_test.dir/__/src/mem/host_memory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HDDT_test.dir/__/src/mem/host_memory.cpp.s"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mahaoyuan/mhyHDDT/HDDT/src/mem/host_memory.cpp -o CMakeFiles/HDDT_test.dir/__/src/mem/host_memory.cpp.s

tests/CMakeFiles/HDDT_test.dir/__/src/mem/rocm_memory.cpp.o: tests/CMakeFiles/HDDT_test.dir/flags.make
tests/CMakeFiles/HDDT_test.dir/__/src/mem/rocm_memory.cpp.o: src/mem/rocm_memory.cpp
tests/CMakeFiles/HDDT_test.dir/__/src/mem/rocm_memory.cpp.o: tests/CMakeFiles/HDDT_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mahaoyuan/mhyHDDT/HDDT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object tests/CMakeFiles/HDDT_test.dir/__/src/mem/rocm_memory.cpp.o"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/HDDT_test.dir/__/src/mem/rocm_memory.cpp.o -MF CMakeFiles/HDDT_test.dir/__/src/mem/rocm_memory.cpp.o.d -o CMakeFiles/HDDT_test.dir/__/src/mem/rocm_memory.cpp.o -c /home/mahaoyuan/mhyHDDT/HDDT/src/mem/rocm_memory.cpp

tests/CMakeFiles/HDDT_test.dir/__/src/mem/rocm_memory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HDDT_test.dir/__/src/mem/rocm_memory.cpp.i"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mahaoyuan/mhyHDDT/HDDT/src/mem/rocm_memory.cpp > CMakeFiles/HDDT_test.dir/__/src/mem/rocm_memory.cpp.i

tests/CMakeFiles/HDDT_test.dir/__/src/mem/rocm_memory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HDDT_test.dir/__/src/mem/rocm_memory.cpp.s"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mahaoyuan/mhyHDDT/HDDT/src/mem/rocm_memory.cpp -o CMakeFiles/HDDT_test.dir/__/src/mem/rocm_memory.cpp.s

tests/CMakeFiles/HDDT_test.dir/__/src/net/cuda/net_cuda_reduce.cu.o: tests/CMakeFiles/HDDT_test.dir/flags.make
tests/CMakeFiles/HDDT_test.dir/__/src/net/cuda/net_cuda_reduce.cu.o: tests/CMakeFiles/HDDT_test.dir/includes_CUDA.rsp
tests/CMakeFiles/HDDT_test.dir/__/src/net/cuda/net_cuda_reduce.cu.o: src/net/cuda/net_cuda_reduce.cu
tests/CMakeFiles/HDDT_test.dir/__/src/net/cuda/net_cuda_reduce.cu.o: tests/CMakeFiles/HDDT_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mahaoyuan/mhyHDDT/HDDT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CUDA object tests/CMakeFiles/HDDT_test.dir/__/src/net/cuda/net_cuda_reduce.cu.o"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/local/cuda/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT tests/CMakeFiles/HDDT_test.dir/__/src/net/cuda/net_cuda_reduce.cu.o -MF CMakeFiles/HDDT_test.dir/__/src/net/cuda/net_cuda_reduce.cu.o.d -x cu -c /home/mahaoyuan/mhyHDDT/HDDT/src/net/cuda/net_cuda_reduce.cu -o CMakeFiles/HDDT_test.dir/__/src/net/cuda/net_cuda_reduce.cu.o

tests/CMakeFiles/HDDT_test.dir/__/src/net/cuda/net_cuda_reduce.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CUDA source to CMakeFiles/HDDT_test.dir/__/src/net/cuda/net_cuda_reduce.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

tests/CMakeFiles/HDDT_test.dir/__/src/net/cuda/net_cuda_reduce.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CUDA source to assembly CMakeFiles/HDDT_test.dir/__/src/net/cuda/net_cuda_reduce.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

tests/CMakeFiles/HDDT_test.dir/__/src/net/net.cpp.o: tests/CMakeFiles/HDDT_test.dir/flags.make
tests/CMakeFiles/HDDT_test.dir/__/src/net/net.cpp.o: src/net/net.cpp
tests/CMakeFiles/HDDT_test.dir/__/src/net/net.cpp.o: tests/CMakeFiles/HDDT_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mahaoyuan/mhyHDDT/HDDT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object tests/CMakeFiles/HDDT_test.dir/__/src/net/net.cpp.o"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/HDDT_test.dir/__/src/net/net.cpp.o -MF CMakeFiles/HDDT_test.dir/__/src/net/net.cpp.o.d -o CMakeFiles/HDDT_test.dir/__/src/net/net.cpp.o -c /home/mahaoyuan/mhyHDDT/HDDT/src/net/net.cpp

tests/CMakeFiles/HDDT_test.dir/__/src/net/net.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HDDT_test.dir/__/src/net/net.cpp.i"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mahaoyuan/mhyHDDT/HDDT/src/net/net.cpp > CMakeFiles/HDDT_test.dir/__/src/net/net.cpp.i

tests/CMakeFiles/HDDT_test.dir/__/src/net/net.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HDDT_test.dir/__/src/net/net.cpp.s"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mahaoyuan/mhyHDDT/HDDT/src/net/net.cpp -o CMakeFiles/HDDT_test.dir/__/src/net/net.cpp.s

tests/CMakeFiles/HDDT_test.dir/__/src/net/rdmaCommunictor.cpp.o: tests/CMakeFiles/HDDT_test.dir/flags.make
tests/CMakeFiles/HDDT_test.dir/__/src/net/rdmaCommunictor.cpp.o: src/net/rdmaCommunictor.cpp
tests/CMakeFiles/HDDT_test.dir/__/src/net/rdmaCommunictor.cpp.o: tests/CMakeFiles/HDDT_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mahaoyuan/mhyHDDT/HDDT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object tests/CMakeFiles/HDDT_test.dir/__/src/net/rdmaCommunictor.cpp.o"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/HDDT_test.dir/__/src/net/rdmaCommunictor.cpp.o -MF CMakeFiles/HDDT_test.dir/__/src/net/rdmaCommunictor.cpp.o.d -o CMakeFiles/HDDT_test.dir/__/src/net/rdmaCommunictor.cpp.o -c /home/mahaoyuan/mhyHDDT/HDDT/src/net/rdmaCommunictor.cpp

tests/CMakeFiles/HDDT_test.dir/__/src/net/rdmaCommunictor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HDDT_test.dir/__/src/net/rdmaCommunictor.cpp.i"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mahaoyuan/mhyHDDT/HDDT/src/net/rdmaCommunictor.cpp > CMakeFiles/HDDT_test.dir/__/src/net/rdmaCommunictor.cpp.i

tests/CMakeFiles/HDDT_test.dir/__/src/net/rdmaCommunictor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HDDT_test.dir/__/src/net/rdmaCommunictor.cpp.s"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mahaoyuan/mhyHDDT/HDDT/src/net/rdmaCommunictor.cpp -o CMakeFiles/HDDT_test.dir/__/src/net/rdmaCommunictor.cpp.s

tests/CMakeFiles/HDDT_test.dir/__/src/net/tcpCommunictor.cpp.o: tests/CMakeFiles/HDDT_test.dir/flags.make
tests/CMakeFiles/HDDT_test.dir/__/src/net/tcpCommunictor.cpp.o: src/net/tcpCommunictor.cpp
tests/CMakeFiles/HDDT_test.dir/__/src/net/tcpCommunictor.cpp.o: tests/CMakeFiles/HDDT_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mahaoyuan/mhyHDDT/HDDT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object tests/CMakeFiles/HDDT_test.dir/__/src/net/tcpCommunictor.cpp.o"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/HDDT_test.dir/__/src/net/tcpCommunictor.cpp.o -MF CMakeFiles/HDDT_test.dir/__/src/net/tcpCommunictor.cpp.o.d -o CMakeFiles/HDDT_test.dir/__/src/net/tcpCommunictor.cpp.o -c /home/mahaoyuan/mhyHDDT/HDDT/src/net/tcpCommunictor.cpp

tests/CMakeFiles/HDDT_test.dir/__/src/net/tcpCommunictor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HDDT_test.dir/__/src/net/tcpCommunictor.cpp.i"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mahaoyuan/mhyHDDT/HDDT/src/net/tcpCommunictor.cpp > CMakeFiles/HDDT_test.dir/__/src/net/tcpCommunictor.cpp.i

tests/CMakeFiles/HDDT_test.dir/__/src/net/tcpCommunictor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HDDT_test.dir/__/src/net/tcpCommunictor.cpp.s"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mahaoyuan/mhyHDDT/HDDT/src/net/tcpCommunictor.cpp -o CMakeFiles/HDDT_test.dir/__/src/net/tcpCommunictor.cpp.s

tests/CMakeFiles/HDDT_test.dir/__/src/nn/cuda/nn_cuda_cnn.cu.o: tests/CMakeFiles/HDDT_test.dir/flags.make
tests/CMakeFiles/HDDT_test.dir/__/src/nn/cuda/nn_cuda_cnn.cu.o: tests/CMakeFiles/HDDT_test.dir/includes_CUDA.rsp
tests/CMakeFiles/HDDT_test.dir/__/src/nn/cuda/nn_cuda_cnn.cu.o: src/nn/cuda/nn_cuda_cnn.cu
tests/CMakeFiles/HDDT_test.dir/__/src/nn/cuda/nn_cuda_cnn.cu.o: tests/CMakeFiles/HDDT_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mahaoyuan/mhyHDDT/HDDT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CUDA object tests/CMakeFiles/HDDT_test.dir/__/src/nn/cuda/nn_cuda_cnn.cu.o"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/local/cuda/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT tests/CMakeFiles/HDDT_test.dir/__/src/nn/cuda/nn_cuda_cnn.cu.o -MF CMakeFiles/HDDT_test.dir/__/src/nn/cuda/nn_cuda_cnn.cu.o.d -x cu -c /home/mahaoyuan/mhyHDDT/HDDT/src/nn/cuda/nn_cuda_cnn.cu -o CMakeFiles/HDDT_test.dir/__/src/nn/cuda/nn_cuda_cnn.cu.o

tests/CMakeFiles/HDDT_test.dir/__/src/nn/cuda/nn_cuda_cnn.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CUDA source to CMakeFiles/HDDT_test.dir/__/src/nn/cuda/nn_cuda_cnn.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

tests/CMakeFiles/HDDT_test.dir/__/src/nn/cuda/nn_cuda_cnn.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CUDA source to assembly CMakeFiles/HDDT_test.dir/__/src/nn/cuda/nn_cuda_cnn.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

tests/CMakeFiles/HDDT_test.dir/__/src/nn/nn.cpp.o: tests/CMakeFiles/HDDT_test.dir/flags.make
tests/CMakeFiles/HDDT_test.dir/__/src/nn/nn.cpp.o: src/nn/nn.cpp
tests/CMakeFiles/HDDT_test.dir/__/src/nn/nn.cpp.o: tests/CMakeFiles/HDDT_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mahaoyuan/mhyHDDT/HDDT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object tests/CMakeFiles/HDDT_test.dir/__/src/nn/nn.cpp.o"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/HDDT_test.dir/__/src/nn/nn.cpp.o -MF CMakeFiles/HDDT_test.dir/__/src/nn/nn.cpp.o.d -o CMakeFiles/HDDT_test.dir/__/src/nn/nn.cpp.o -c /home/mahaoyuan/mhyHDDT/HDDT/src/nn/nn.cpp

tests/CMakeFiles/HDDT_test.dir/__/src/nn/nn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HDDT_test.dir/__/src/nn/nn.cpp.i"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mahaoyuan/mhyHDDT/HDDT/src/nn/nn.cpp > CMakeFiles/HDDT_test.dir/__/src/nn/nn.cpp.i

tests/CMakeFiles/HDDT_test.dir/__/src/nn/nn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HDDT_test.dir/__/src/nn/nn.cpp.s"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mahaoyuan/mhyHDDT/HDDT/src/nn/nn.cpp -o CMakeFiles/HDDT_test.dir/__/src/nn/nn.cpp.s

# Object files for target HDDT_test
HDDT_test_OBJECTS = \
"CMakeFiles/HDDT_test.dir/hddt_memory_test.cpp.o" \
"CMakeFiles/HDDT_test.dir/__/src/driver.cpp.o" \
"CMakeFiles/HDDT_test.dir/__/src/log.cpp.o" \
"CMakeFiles/HDDT_test.dir/__/src/mem/cuda_memory.cpp.o" \
"CMakeFiles/HDDT_test.dir/__/src/mem/hddt_memory.cpp.o" \
"CMakeFiles/HDDT_test.dir/__/src/mem/host_memory.cpp.o" \
"CMakeFiles/HDDT_test.dir/__/src/mem/rocm_memory.cpp.o" \
"CMakeFiles/HDDT_test.dir/__/src/net/cuda/net_cuda_reduce.cu.o" \
"CMakeFiles/HDDT_test.dir/__/src/net/net.cpp.o" \
"CMakeFiles/HDDT_test.dir/__/src/net/rdmaCommunictor.cpp.o" \
"CMakeFiles/HDDT_test.dir/__/src/net/tcpCommunictor.cpp.o" \
"CMakeFiles/HDDT_test.dir/__/src/nn/cuda/nn_cuda_cnn.cu.o" \
"CMakeFiles/HDDT_test.dir/__/src/nn/nn.cpp.o"

# External object files for target HDDT_test
HDDT_test_EXTERNAL_OBJECTS =

tests/HDDT_test: tests/CMakeFiles/HDDT_test.dir/hddt_memory_test.cpp.o
tests/HDDT_test: tests/CMakeFiles/HDDT_test.dir/__/src/driver.cpp.o
tests/HDDT_test: tests/CMakeFiles/HDDT_test.dir/__/src/log.cpp.o
tests/HDDT_test: tests/CMakeFiles/HDDT_test.dir/__/src/mem/cuda_memory.cpp.o
tests/HDDT_test: tests/CMakeFiles/HDDT_test.dir/__/src/mem/hddt_memory.cpp.o
tests/HDDT_test: tests/CMakeFiles/HDDT_test.dir/__/src/mem/host_memory.cpp.o
tests/HDDT_test: tests/CMakeFiles/HDDT_test.dir/__/src/mem/rocm_memory.cpp.o
tests/HDDT_test: tests/CMakeFiles/HDDT_test.dir/__/src/net/cuda/net_cuda_reduce.cu.o
tests/HDDT_test: tests/CMakeFiles/HDDT_test.dir/__/src/net/net.cpp.o
tests/HDDT_test: tests/CMakeFiles/HDDT_test.dir/__/src/net/rdmaCommunictor.cpp.o
tests/HDDT_test: tests/CMakeFiles/HDDT_test.dir/__/src/net/tcpCommunictor.cpp.o
tests/HDDT_test: tests/CMakeFiles/HDDT_test.dir/__/src/nn/cuda/nn_cuda_cnn.cu.o
tests/HDDT_test: tests/CMakeFiles/HDDT_test.dir/__/src/nn/nn.cpp.o
tests/HDDT_test: tests/CMakeFiles/HDDT_test.dir/build.make
tests/HDDT_test: /usr/lib/x86_64-linux-gnu/libgtest_main.a
tests/HDDT_test: /usr/lib/x86_64-linux-gnu/libgtest.a
tests/HDDT_test: tests/CMakeFiles/HDDT_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/mahaoyuan/mhyHDDT/HDDT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable HDDT_test"
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HDDT_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/HDDT_test.dir/build: tests/HDDT_test
.PHONY : tests/CMakeFiles/HDDT_test.dir/build

tests/CMakeFiles/HDDT_test.dir/clean:
	cd /home/mahaoyuan/mhyHDDT/HDDT/tests && $(CMAKE_COMMAND) -P CMakeFiles/HDDT_test.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/HDDT_test.dir/clean

tests/CMakeFiles/HDDT_test.dir/depend:
	cd /home/mahaoyuan/mhyHDDT/HDDT && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mahaoyuan/mhyHDDT/HDDT /home/mahaoyuan/mhyHDDT/HDDT/tests /home/mahaoyuan/mhyHDDT/HDDT /home/mahaoyuan/mhyHDDT/HDDT/tests /home/mahaoyuan/mhyHDDT/HDDT/tests/CMakeFiles/HDDT_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/HDDT_test.dir/depend

