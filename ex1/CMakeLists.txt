project(MatMul CUDACXX)
cmake_minimum_required(VERSION 3.8)
#include <cuda_runtime.h>

# Set the default build type
if(NOT CMAKE_BUILD_TYPE)
	set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Choose the type of build, options are: Debug Release RelWithDebInfo MinSizeRel." FORCE)
endif()

# Specify the files that need to be compiled and linked.
# This will create an executable named 'matmul'.
add_executable(matmul
	main.cu
	matmul.cu
	matrix.cu
	test.cu
	mul_cpu.cu
	mul_gpu.cu
	)

set_target_properties(matmul PROPERTIES CUDA_ARCHITECTURES "75")
