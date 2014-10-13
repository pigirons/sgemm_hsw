#define _GNU_SOURCE
#include "sgemm_kernel.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <math.h>
#include <sched.h>
#include <pthread.h>
#include <sys/mman.h>

#define LOOP_TIME (1048576)

static double get_time(struct timespec *start, struct timespec *end)
{
    return end->tv_sec - start->tv_sec + (end->tv_nsec - start->tv_nsec) * 1e-9;
}

static void thread_bind(int cpu)
{
    cpu_set_t cpu_set;
    CPU_ZERO(&cpu_set);
    CPU_SET(cpu, &cpu_set);
    if (pthread_setaffinity_np(pthread_self(),
            sizeof(cpu_set_t), &cpu_set) != 0)
    {
        fprintf(stderr, "Error: cpu[%d] bind failed.\n", cpu);
        exit(0);
    }
}

static void *page_alloc(size_t size)
{
    void *data = mmap(NULL, size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
    if (data == (void*)-1)
    {
        fprintf(stderr, "Error(MemData::Construction): mmap failed.\n");
        exit(0);
    }
    return data;
}

static void page_free(void *mem, size_t size)
{
    munmap(mem, size);
}

void sgemm_naive_48_48_48(float *a, float *b, float *c)
{
    int i, j, k;
    for (i = 0; i < 48; i++)
    {
        for (j = 0; j < 48; j++)
        {
            for (k = 0; k < 48; k++)
            {
                c[i * 48 + j] += a[i * 48 + k] * b[k * 48 + j];
            }
        }
    }
}

void verify(float *cs, float *ct)
{
    int i;
    float err_rele = (cs[0] - ct[0]) / cs[0];
    float min = err_rele;
    float max = err_rele;
    float avg = err_rele;
    for (i = 1; i < 48 * 48; i++)
    {
        err_rele = fabsf(cs[i] - ct[i]) / cs[i];
        min = err_rele < min ? err_rele : min;
        max = err_rele > max ? err_rele : max;
        avg += err_rele;
    }
    avg /= (48 * 48);
    printf("avg error: %e, max error: %e, min error: %e.\n", avg, max, min);
}

void test_kernel()
{
    int i;

    struct timespec start, end;
    double t, gflops;

    thread_bind(0);

    float *a = (float*)page_alloc(48 * 48 * sizeof(float));
    float *b = (float*)page_alloc(48 * 48 * sizeof(float));
    float *cn = (float*)page_alloc(48 * 48 * sizeof(float));
    float *ca = (float*)page_alloc(48 * 48 * sizeof(float));
    float *cf = (float*)page_alloc(48 * 48 * sizeof(float));

    srand(time(NULL));

    for (i = 0; i < 48 * 48; i++)
    {
        a[i] = (float)rand() / RAND_MAX;
        b[i] = (float)rand() / RAND_MAX;
    }
    memset(cn, 0, 48 * 48 * sizeof(float));
    memset(ca, 0, 48 * 48 * sizeof(float));
    memset(cf, 0, 48 * 48 * sizeof(float));

    // check error
    sgemm_naive_48_48_48(a, b, cn);
    sgemm_kernel_avx_48_48_48(a, b, ca);
    sgemm_kernel_fma_48_48_48(a, b, cf);

    printf("AVX-tuned version check result:\n");
    verify(cn, ca);
    printf("FMA-tuned version check result:\n");
    verify(cn, cf);

    // naive version
    // warm up
    for (i = 0; i < 1024; i++)
    {
        sgemm_naive_48_48_48(a, b, cn);
    }
    clock_gettime(CLOCK_MONOTONIC_RAW, &start);
    for (i = 0; i < LOOP_TIME; i++)
    {
        sgemm_naive_48_48_48(a, b, cn);
    }
    clock_gettime(CLOCK_MONOTONIC_RAW, &end);

    t = get_time(&start, &end);
    gflops = 2.0 * LOOP_TIME * 48 * 48 * 48 / t * 1e-9;

    printf("Naive version: time = %lfs, perf = %lf GFLOPS.\n", t, gflops);

    // avx-tuned version
    // warm up
    for (i = 0; i < 1024; i++)
    {
        sgemm_kernel_avx_48_48_48(a, b, ca);
    }
    clock_gettime(CLOCK_MONOTONIC_RAW, &start);
    for (i = 0; i < LOOP_TIME; i++)
    {
        sgemm_kernel_avx_48_48_48(a, b, ca);
    }
    clock_gettime(CLOCK_MONOTONIC_RAW, &end);

    t = get_time(&start, &end);
    gflops = 2.0 * LOOP_TIME * 48 * 48 * 48 / t * 1e-9;

    printf("AVX-tuned version: time = %lfs, perf = %lf GFLOPS.\n", t, gflops);

    // fma-tuned version
    // warm up
    for (i = 0; i < 1024; i++)
    {
        sgemm_kernel_fma_48_48_48(a, b, cf);
    }
    clock_gettime(CLOCK_MONOTONIC_RAW, &start);
    for (i = 0; i < LOOP_TIME; i++)
    {
        sgemm_kernel_fma_48_48_48(a, b, cf);
    }
    clock_gettime(CLOCK_MONOTONIC_RAW, &end);

    t = get_time(&start, &end);
    gflops = 2.0 * LOOP_TIME * 48 * 48 * 48 / t * 1e-9;

    printf("FMA-tuned version: time = %lfs, perf = %lf GFLOPS.\n", t, gflops);

    page_free(a, 48 * 48 * sizeof(float));
    page_free(b, 48 * 48 * sizeof(float));
    page_free(cn, 48 * 48 * sizeof(float));
    page_free(ca, 48 * 48 * sizeof(float));
    page_free(cf, 48 * 48 * sizeof(float));
}

int main(int argc, char *argv[])
{
    test_kernel();
    return 0;
}

