add_executable(add_array_serial add_array_serial.cc)
target_include_directories(add_array_serial PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")

add_executable(add_array_sycl add_array_sycl.cc)
target_include_directories(add_array_sycl PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")
