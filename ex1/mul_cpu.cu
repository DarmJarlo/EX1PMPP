#include "matrix.h"
#include "mul_cpu.h"
#include "common.h"

void matrix_mul_cpu(const CPUMatrix &m, const CPUMatrix &n, CPUMatrix &p)
{
	//const M = *m;
	//const N = *n;
	//const P = *p;
for (int i = 0; i < m.height; ++i) {
	for (int j = 0; j < n.width; ++j) {
	double sum = 0;
		for (int k = 0; k < n.width; ++k) {
		double a = m.elements[i * m.width + k];
		double b = n.elements[k * n.width + j];
		double sum += a * b;
		}

	double p.elements[i * n.width + j] = sum;	// TODO: Task 3
	}

	}
	}
