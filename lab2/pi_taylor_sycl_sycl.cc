#include <CL/sycl.hpp>

#include <chrono>
#include <iomanip>
#include <iostream>
#include <limits>
#include <numeric>
#include <thread>

using my_float = double;
using tid_time = std::pair<std::thread::id, double>;

template<typename F, typename R, typename... Args>
auto time_ms(F f, R &ret, Args&&... args) -> tid_time {
    auto start = std::chrono::steady_clock::now();
    ret = f(std::forward<Args>(args)...);
    auto stop = std::chrono::steady_clock::now();

    auto tid = std::this_thread::get_id();
    double ex_time = std::chrono::duration_cast<std::chrono::milliseconds>(stop-start).count();
    return std::make_pair(tid, ex_time);
}

auto calc_pi(size_t steps) -> my_float {
    sycl::default_selector device_selector;
    sycl::queue q(device_selector);

    auto work_group_size = q.get_device().get_info<cl::sycl::info::device::max_work_group_size>();

    if (steps < work_group_size) {
        std::cerr << "The number of steps should be larger than " << work_group_size << std::endl;
        exit(1);
    }

    size_t groups = std::ceil((double) steps / work_group_size);

    std::vector<my_float> terms(work_group_size);
        sycl::buffer<my_float> terms_b {terms};
        q.submit([&](sycl::handler &h) {
            auto terms_a = terms_b.get_access(h, sycl::write_only);
            h.parallel_for(work_group_size, [=](auto i) {
                size_t start = i * groups;
                size_t end = std::min(start + groups, steps);

                my_float acc = 0.0;
                my_float sign = (start & 1) ? -1.0 : 1.0;

                for (size_t k = start; k < end; ++k) {
                    acc += sign / (2.0 * k + 1.0);
                    sign *= -1.0;
                }

                terms_a[i] = acc;
            });
        }).wait();

    return 4.0 * std::accumulate(terms.begin(), terms.end(), 0.0);
}

auto main(int argc, const char *argv[]) -> int {
    if (argc != 2) {
        std::cerr << "Invalid syntax: pi_taylor <steps>" << std::endl;
        exit(1);
    }

    auto steps = std::stoll(argv[1]);

    my_float pi;
    tid_time t = time_ms(calc_pi, pi, steps);

    std::cout << "For " << steps << " steps, pi value: "
        << std::setprecision(std::numeric_limits<long double>::digits10 + 1)
        << pi << " in: " << std::get<1>(t) << "ms" << std::endl;
}
