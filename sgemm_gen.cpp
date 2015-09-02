#include <cstdio>
#include <cstdlib>

void sgemm_gen_avx_48_48_48(FILE *fp)
{
    fprintf(fp, "sgemm_kernel_avx_48_48_48:\n");
    fprintf(fp, "    xorq %%rax, %%rax\n");
    fprintf(fp, "    vxorps %%ymm14, %%ymm14, %%ymm14\n");
    fprintf(fp, "    vxorps %%ymm15, %%ymm15, %%ymm15\n\n");
    fprintf(fp, "loop_avx:\n");
    fprintf(fp, "    xorq %%rcx, %%rcx\n");

    for (int i = 0; i < 12; i++)
    {
        fprintf(fp, "    vmovaps %d(%%rdx), %%ymm%d\n", i * 32, i);
    }
    fprintf(fp, "\n");

    for (int i = 0; i < 48; i++)
    {
        fprintf(fp, "    vbroadcastss %d(%%rdi, %%rcx, 4), %%ymm14\n", i * 4);
        fprintf(fp, "    vbroadcastss %d(%%rdi, %%rcx, 4), %%ymm15\n", i * 4 + 192);

        for (int j = 0; j < 6; j++)
        {
            fprintf(fp, "    vmovaps %d(%%rsi), %%ymm12\n", i * 192 + j * 32);
            fprintf(fp, "    vmulps %%ymm12, %%ymm14, %%ymm13\n");
            fprintf(fp, "    vaddps %%ymm13, %%ymm%d, %%ymm%d\n", j, j);
            fprintf(fp, "    vmulps %%ymm12, %%ymm15, %%ymm13\n");
            fprintf(fp, "    vaddps %%ymm13, %%ymm%d, %%ymm%d\n", j + 6, j + 6);
        }
        fprintf(fp, "\n");
    }

    fprintf(fp, "    addq $2, %%rax\n");
    fprintf(fp, "    addq $384, %%rdi\n");

    for (int i = 0; i < 12; i++)
    {
        fprintf(fp, "    vmovaps %%ymm%d, %d(%%rdx)\n", i, i * 32);
    }

    fprintf(fp, "    addq $384, %%rdx\n");
    fprintf(fp, "    cmpq $48, %%rax\n");
    fprintf(fp, "    jl loop_avx\n");

    fprintf(fp, "    ret\n\n");
}

void sgemm_gen_fma_48_48_48(FILE *fp)
{
    fprintf(fp, "sgemm_kernel_fma_48_48_48:\n");
    fprintf(fp, "    xorq %%rax, %%rax\n");
    fprintf(fp, "    vxorps %%ymm14, %%ymm14, %%ymm14\n");
    fprintf(fp, "    vxorps %%ymm15, %%ymm15, %%ymm15\n\n");
    fprintf(fp, "loop_fma:\n");
    fprintf(fp, "    xorq %%rcx, %%rcx\n");

    for (int i = 0; i < 12; i++)
    {
        fprintf(fp, "    vmovaps %d(%%rdx), %%ymm%d\n", i * 32, i);
    }

    for (int i = 0; i < 48; i++)
    {
        fprintf(fp, "    vbroadcastss %d(%%rdi, %%rcx, 4), %%ymm14\n", i * 4);
        fprintf(fp, "    vbroadcastss %d(%%rdi, %%rcx, 4), %%ymm15\n", i * 4 + 192);
        for (int j = 0; j < 6; j++)
        {
            fprintf(fp, "    vmovaps %d(%%rsi), %%ymm12\n", i * 192 + j * 32);
            fprintf(fp, "    vfmadd231ps %%ymm12, %%ymm14, %%ymm%d\n", j);
            fprintf(fp, "    vfmadd231ps %%ymm12, %%ymm15, %%ymm%d\n", j + 6);
        }
        fprintf(fp, "\n");
    }

    fprintf(fp, "    addq $2, %%rax\n");
    fprintf(fp, "    addq $384, %%rdi\n");
    
    for (int i = 0; i < 12; i++)
    {
        fprintf(fp, "    vmovaps %%ymm%d, %d(%%rdx)\n", i, i * 32);
    }

    fprintf(fp, "    addq $384, %%rdx\n");
    fprintf(fp, "    cmpq $48, %%rax\n");
    fprintf(fp, "    jl loop_fma\n");

    fprintf(fp, "    ret\n\n");
}

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        fprintf(stderr, "Usage: %s gen_file_name\n", argv[0]);
        exit(0);
    }

    FILE *fp = fopen(argv[1], "w");

    fprintf(fp, ".globl sgemm_kernel_avx_48_48_48\n");
    fprintf(fp, ".globl sgemm_kernel_fma_48_48_48\n\n");

    sgemm_gen_avx_48_48_48(fp);
    sgemm_gen_fma_48_48_48(fp);

    fclose(fp);

    return 0;
}

