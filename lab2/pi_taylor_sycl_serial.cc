#include <chrono>
#include <iomanip>
#include <iostream>
#include <limits>
#include <numeric>
#include <thread>

#include <CL/sycl.hpp>

using my_float = float;
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

    if (steps < work_group_size ) {
        std::cerr << "The number of steps should be larger than " << work_group_size << std::endl;
        exit(1);
    }

    std::vector<my_float> terms(steps);
    {
        sycl::buffer terms_b {terms};
        q.submit([&](sycl::handler &h) {
            auto terms_a = terms_b.get_access(h, sycl::write_only);
            h.parallel_for(steps, [=](auto i) {
                my_float sign = (i & 1) ? -1.0 : 1.0;
                terms_a[i] = sign / (2.0 * i + 1.0);
            });
        });
    }

    return 4.0 * std::accumulate(terms.begin(), terms.end(), 0.0);
}

auto main(int argc, const char *argv[]) -> int {
    if (argc != 2) {
        std::cerr << "Invalid syntax: pi_taylor <steps>" << std::endl;
        exit(1);
    }

    size_t steps = std::stoll(argv[1]);

    my_float pi;
    tid_time t = time_ms(calc_pi, pi, steps);

    std::cout << "For " << steps << " steps, pi value: "
        << std::setprecision(std::numeric_limits<long double>::digits10 + 1)
        << pi << " in: " << std::get<1>(t) << "ms" << std::endl;
}
