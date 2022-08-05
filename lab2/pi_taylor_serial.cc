#include <iomanip>
#include <iostream>
#include <limits>
#include <chrono>
#include <thread>

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

auto pi_taylor(size_t steps) -> my_float {
    my_float pi_acc = 0.0;
    my_float sign = 1.0;

    for (size_t i = 0; i < steps; ++i) {
        pi_acc += sign / (2.0 * i + 1.0);
        sign *= -1;
    }

    return 4.0 * pi_acc;
}

auto main(int argc, const char *argv[]) -> int {
    if (argc != 2) {
        std::cerr << "Invalid syntax: pi_taylor <steps>" << std::endl;
        exit(1);
    }

    size_t steps = std::stoll(argv[1]);

    my_float pi;
    tid_time t = time_ms(pi_taylor, pi, steps);

    std::cout << "For " << steps << " steps, pi value: "
        << std::setprecision(std::numeric_limits<long double>::digits10 + 1)
        << pi << " in: " << std::get<1>(t) << "ms" << std::endl;
}
