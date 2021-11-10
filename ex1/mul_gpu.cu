#include <cuda_runtime.h>

// NOTE: if you include stdio.h, you can use printf inside your kernel

#include "common.h"
#include "matrix.h"
#include "mul_gpu.h"

// TODO (Task 4): Implement matrix multiplication CUDA kernel
__global__ void kernel(float* pfMatrixA, float* pfMatrixB, float* pfMatrixC, int m, int n, int k)
{
    
void matrix_mul_gpu(const GPUMatrix &m, const GPUMatrix &n, GPUMatrix &p)
{
t:
	BLOCK_SIZE = m.height * n.width
	dim3 threads(BLOCK_SIZE)
	dim3 grid(GW /BLOCK_SIZE)
	kernel<<<1,threads>>>(m,n)	// TODO (Task 4): Determine execution configuration and call CUDA kernel
}
