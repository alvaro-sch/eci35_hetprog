add_executable(pi_taylor_serial pi_taylor_serial.cc)
target_include_directories(pi_taylor_serial PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")

add_executable(pi_taylor_sycl_serial pi_taylor_sycl_serial.cc)
target_include_directories(pi_taylor_sycl_serial PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")

add_executable(pi_taylor_sycl_sycl pi_taylor_sycl_sycl.cc)
target_include_directories(pi_taylor_sycl_sycl PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")
