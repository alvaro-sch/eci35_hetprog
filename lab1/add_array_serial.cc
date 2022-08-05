#include <iostream>
#include <random>
#include <vector>

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

	for (auto i = 0; i < n; ++i) {
		C[i] = A[i] + B[i];
	}

	for (auto i = 0; i < 8; ++i) {
		std::cout << "C[" << i << "] = " << C[i] << std::endl;
	}
}
