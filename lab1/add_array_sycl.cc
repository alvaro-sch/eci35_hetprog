#include <iostream>
#include <random>
#include <vector>

#include <CL/sycl.hpp>

#include <add_array.hh>

using namespace add_array;

int main() {
	std::vector<float> A(n), B(n), C(n);

	std::random_device rd;
	std::mt19937 gen(rd());
	std::uniform_real_distribution<float> dis(0.0f, 1.0f);

  	// use a random value to initialize the first element to avoid compiler
  	// optimizations
	float value = dis(gen);
	A[0] = value;
	B[0] = value - 1.0f;

	for (auto i = 1; i < n; ++i) {
		A[i] = A[0] + i;
		B[i] = B[0] + i;
	}

	{
		sycl::queue q {sycl::gpu_selector()};
		sycl::buffer A_b {A}, B_b {B}, C_b {C};
		q.submit([&](sycl::handler &h) {
			auto A_a = A_b.get_access(h, sycl::read_only);
			auto B_a = B_b.get_access(h, sycl::read_only);
			auto C_a = C_b.get_access(h, sycl::write_only);
			h.parallel_for(n, [=](auto i) {
				C_a[i] = A_a[i] + B_a[i];
			});
		});
	}

	for (auto i = 0; i < 8; ++i) {
		std::cout << "C[" << i << "] = " << C[i] << std::endl;
	}
}
