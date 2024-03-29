#include <iostream>

#ifdef __CUDACC__
#include <cuda_runtime.h>
#endif

#include "matmul.h"
#include "test.h"
#include "common.h"
#include "mul_cpu.h"
#include "mul_gpu.h"
#include "timer.h"

void print_cuda_devices()
{	
	int deviceCount;
	cudaGetDeviceCount(&deviceCount);
	int device;
	for (device = 0; device < deviceCount; ++device) {
   	 cudaDeviceProp deviceProp;
    	cudaGetDeviceProperties(&deviceProp, device);
    	printf("Device %d has compute capability %d.%d.\n",
           device, deviceProp.major, deviceProp.minor);
	printf("Device %d has Multiprocessor %d,L2Cache %d,Clockrate %d GHz,Total globalmem %d MB \n",
			device,deviceProp.multiProcessorCount,deviceProp.L2CacheSize*2e-10,deviceProp.clockRate*1e-6,deviceProp.totalGlobalMem*2e-2);
	}// TODO: Task 2
}

void matmul()
{
	// === Task 3 ===
	// TODO: Allocate CPU matrices (see matrix.cc)
	//       Matrix sizes:
	//       Input matrices:
	//       Matrix M: pmpp::M_WIDTH, pmpp::M_HEIGHT
	//       Matrix N: pmpp::N_WIDTH, pmpp::N_HEIGHT
	//       Output matrices:
	//       Matrix P: pmpp::P_WIDTH, pmpp::P_HEIGHT
	// TODO: Fill the CPU input matrices with the provided test values (pmpp::fill(CPUMatrix &m, CPUMatrix &n))
	// TODO (Task 5): Start CPU timing here!
	// TODO: Run your implementation on the CPU (see mul_cpu.cc)
	// TODO (Task 5): Stop CPU timing here!
	// TODO: Check your matrix for correctness (pmpp::test_cpu(const CPUMatrix &p))

	// === Task 4 ===
	// TODO: Set CUDA device
	// TODO: Allocate GPU matrices (see matrix.cc)
	// TODO: Upload the CPU input matrices to the GPU (see matrix.cc)
	// TODO (Task 5): Start GPU timing here!
	// TODO: Run your implementation on the GPU (see mul_gpu.cu)
	// TODO (Task 5): Stop GPU timing here!
	// TODO: Download the GPU output matrix to the CPU (see matrix.cc)
	// TODO: Check your downloaded matrix for correctness (pmpp::test_gpu(const CPUMatrix &p))
	// TODO: Compare CPU result with GPU result (see matrix.cc)

	// TODO (Task3/4/5): Cleanup ALL matrices and and events
}


/************************************************************
 * 
 * TODO: Write your text answers here!
 * 
 * (Task 4) 6. Where do the differences come from?
 * 
 * Answer: TODO
 * 
 * 
 ************************************************************/
