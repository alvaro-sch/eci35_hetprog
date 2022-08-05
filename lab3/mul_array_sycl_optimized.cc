#include <iostream>
#include <random>
#include <vector>

#include <CL/sycl.hpp>

namespace {
    constexpr size_t n = 1024;
};

class optimized;

auto main() -> int {
    std::vector<float> A, res(1);

    A.reserve(n);

    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_real_distribution<float> dis(0.0f, 0.25f);

    float value = dis(gen);
    A.push_back(value);

    for (size_t i = 1; i < n; ++i) {
	    A.push_back(A[0] + static_cast<float>(i)/static_cast<float>(n));
    }

    sycl::queue q;
    sycl::buffer<float> A_b {A}, res_b {res};
    q.submit([&](sycl::handler &h) {
        auto A_a = A_b.get_access(h, sycl::read_only);
        auto res_a = res_b.get_access(h, sycl::write_only);

        h.single_task<class optimized>([=]() {
            const size_t m = 5; // ( ͡° ͜ʖ ͡°)
            float sh_reg[m] = {1.0};

            for (size_t i = 0; i < n; ++i) {
                float cur = A_a[i] * sh_reg[m-1];

                #pragma unroll
                for (size_t k = m-1; k; --k) {
                    sh_reg[k] = sh_reg[k-1];
                }

                sh_reg[0] = cur;
            }

            float acc = 1.0;

            #pragma unroll
            for (size_t k = 0; k < m; ++k) {
                acc *= sh_reg[k];
            }

            res_a[0] = acc;
        });
    }).wait();

    std::cout << "res[0] = " << res[0] << std::endl;
}
