#include <iostream>
#include <iomanip>
#include <cstdlib>

#include <cuda_runtime.h>

#include "common.h"
#include "matrix.h"


CPUMatrix matrix_alloc_cpu(int width, int height)
{
	CPUMatrix m;
	m.width = width;
	m.height = height;
	m.elements = new float[m.width * m.height];
	return m;
}
void matrix_free_cpu(CPUMatrix &m)
{
	delete[] m.elements;
}

GPUMatrix matrix_alloc_gpu(int width, int height)
{
	GPUMatrix Md;
	int size = width * height * sizeof(float);
        cudaMalloc((void**)&Md.elements, size);
       	return Md;	// TODO (Task 4): Allocate memory at the GPU
}
void matrix_free_gpu(GPUMatrix &m)
{
	// TODO (Task 4): Free the memory
}

void matrix_upload(const CPUMatrix &src, GPUMatrix &dst)
{
	// TODO (Task 4): Upload CPU matrix to the GPU
}
void matrix_download(const GPUMatrix &src, CPUMatrix &dst)
{
	// TODO (Task 4): Download matrix from the GPU
}

void matrix_compare_cpu(const CPUMatrix &a, const CPUMatrix &b)
{
	// TODO (Task 4): compare both matrices a and b and print differences to the console
}
