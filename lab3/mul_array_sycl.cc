#include <iostream>
#include <random>
#include <vector>

#include <CL/sycl.hpp>

namespace {
    constexpr size_t n = 1024;
};

class naive;

auto main() -> int {
    std::vector<float> A, res(1);

    A.reserve(n);

    std::random_device rd;
    std::mt19937 gen(rd());
    //std::uniform_real_distribution<float> dis(0.0f, 0.25f);
    std::uniform_real_distribution<float> dis(0.55f, 0.56f);

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

        h.single_task<class naive>([=]() {
            float acc = 1.0;

            for (size_t i = 0; i < n; ++i) {
                acc *= A_a[i];
            }

            res_a[0] = acc;
        });
    }).wait();

    std::cout << "res[0] = " << res[0] << std::endl;
}
