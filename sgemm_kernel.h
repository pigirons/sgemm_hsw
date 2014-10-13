#ifndef _SGEMM_KERNEL_H
#define _SGEMM_KERNEL_H

void sgemm_kernel_avx_48_48_48(float *a, float *b, float *c);
void sgemm_kernel_fma_48_48_48(float *a, float *b, float *c);

#endif

