rm -rf build
mkdir -p build && cd build
cmake .. -DBUILD_PYTHON_MOD=ON
# cmake ..
make