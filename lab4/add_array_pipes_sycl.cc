#include <iostream>
#include <random>
#include <vector>

#include <CL/sycl.hpp>
#include <ext/intel/fpga_extensions.hpp>

namespace intel = sycl::ext::intel;

const size_t pipe_entries = 16; // ensure 512 bit burst
using a_pipe = intel::pipe<
    class a_read_pipe,
    float,
    pipe_entries>;

using b_pipe = intel::pipe<
    class b_read_pipe,
    float,
    pipe_entries>;

using c_pipe = intel::pipe<
    class c_write_pipe,
    float,
    pipe_entries>;

auto main() -> int {
    const size_t n = 32;

    std::vector<float> A, B, C(n);
    A.reserve(n);
    B.reserve(n);

    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_real_distribution<float> dis(0.0f, 1.0f);

    float value = dis(gen);
    A.push_back(value);
    B.push_back(value - 1.0f);

    for(size_t i = 1; i < n; ++i) {
    	A.push_back(A[0]+i);
    	B.push_back(B[0]+i);
    }

#if defined(FPGA_EMULATOR)
    intel::fpga_emulator_selector device_selector;
#else
    intel::fpga_selector device_selector;
#endif

    // property list to enable SYCL profiling for the device queue
    // auto props = property_list{property::queue::enable_profiling()};
    sycl::queue q {intel::fpga_emulator_selector {}};
    sycl::buffer<float> A_b {A}, B_b {B}, C_b {C};

    q.submit([&](sycl::handler &h) {
        auto A_a = A_b.get_access(h, sycl::read_only);

        h.single_task<class A_writer>([=]() {
            for (size_t i = 0; i < n; ++i) {
                a_pipe::write(A_a[i]);
            }
        });
    });

    q.submit([&](sycl::handler &h) {
        auto B_a = B_b.get_access(h, sycl::read_only);

        h.single_task<class B_writer>([=]() {
            for (size_t i = 0; i < n; ++i) {
                b_pipe::write(B_a[i]);
            }
        });
    });

    q.submit([&](sycl::handler &h) {
        h.single_task<class Adder>([=]() {
            for (size_t i = 0; i < n; ++i) {
                c_pipe::write(a_pipe::read() + b_pipe::read());
            }
        });
    });

    q.submit([&](sycl::handler &h) {
        auto C_a = C_b.get_access(h, sycl::write_only);

        h.single_task<class C_reader>([=]() {
            for (size_t i = 0; i < n; ++i) {
                C_a[i] = c_pipe::read();
            }
        });
    });

    for (int i = 0; i < 8; i++) {
      std::cout << "C[" << i << "] = " << C[i] << std::endl;
    }
}
