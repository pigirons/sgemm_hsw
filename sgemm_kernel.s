.globl sgemm_kernel_48_48_48
sgemm_kernel_48_48_48:
    xorq %rax, %rax
    vxorps %ymm14, %ymm14, %ymm14
    vxorps %ymm15, %ymm15, %ymm15
loop1:
    xorq %rcx, %rcx
    vmovaps 0(%rdx), %ymm0
    vmovaps 32(%rdx), %ymm1
    vmovaps 64(%rdx), %ymm2
    vmovaps 96(%rdx), %ymm3
    vmovaps 128(%rdx), %ymm4
    vmovaps 160(%rdx), %ymm5
    vmovaps 192(%rdx), %ymm6
    vmovaps 224(%rdx), %ymm7
    vmovaps 256(%rdx), %ymm8
    vmovaps 288(%rdx), %ymm9
    vmovaps 320(%rdx), %ymm10
    vmovaps 352(%rdx), %ymm11
    vbroadcastss 0(%rdi, %rcx, 4), %ymm14
    vbroadcastss 192(%rdi, %rcx, 4), %ymm15
    vmovaps 0(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 32(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 64(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 96(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 128(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 160(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 4(%rdi, %rcx, 4), %ymm14
    vbroadcastss 196(%rdi, %rcx, 4), %ymm15
    vmovaps 192(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 224(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 256(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 288(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 320(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 352(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 8(%rdi, %rcx, 4), %ymm14
    vbroadcastss 200(%rdi, %rcx, 4), %ymm15
    vmovaps 384(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 416(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 448(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 480(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 512(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 544(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 12(%rdi, %rcx, 4), %ymm14
    vbroadcastss 204(%rdi, %rcx, 4), %ymm15
    vmovaps 576(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 608(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 640(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 672(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 704(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 736(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 16(%rdi, %rcx, 4), %ymm14
    vbroadcastss 208(%rdi, %rcx, 4), %ymm15
    vmovaps 768(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 800(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 832(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 864(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 896(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 928(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 20(%rdi, %rcx, 4), %ymm14
    vbroadcastss 212(%rdi, %rcx, 4), %ymm15
    vmovaps 960(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 992(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 1024(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 1056(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 1088(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 1120(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 24(%rdi, %rcx, 4), %ymm14
    vbroadcastss 216(%rdi, %rcx, 4), %ymm15
    vmovaps 1152(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 1184(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 1216(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 1248(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 1280(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 1312(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 28(%rdi, %rcx, 4), %ymm14
    vbroadcastss 220(%rdi, %rcx, 4), %ymm15
    vmovaps 1344(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 1376(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 1408(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 1440(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 1472(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 1504(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 32(%rdi, %rcx, 4), %ymm14
    vbroadcastss 224(%rdi, %rcx, 4), %ymm15
    vmovaps 1536(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 1568(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 1600(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 1632(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 1664(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 1696(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 36(%rdi, %rcx, 4), %ymm14
    vbroadcastss 228(%rdi, %rcx, 4), %ymm15
    vmovaps 1728(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 1760(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 1792(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 1824(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 1856(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 1888(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 40(%rdi, %rcx, 4), %ymm14
    vbroadcastss 232(%rdi, %rcx, 4), %ymm15
    vmovaps 1920(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 1952(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 1984(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 2016(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 2048(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 2080(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 44(%rdi, %rcx, 4), %ymm14
    vbroadcastss 236(%rdi, %rcx, 4), %ymm15
    vmovaps 2112(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 2144(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 2176(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 2208(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 2240(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 2272(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 48(%rdi, %rcx, 4), %ymm14
    vbroadcastss 240(%rdi, %rcx, 4), %ymm15
    vmovaps 2304(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 2336(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 2368(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 2400(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 2432(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 2464(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 52(%rdi, %rcx, 4), %ymm14
    vbroadcastss 244(%rdi, %rcx, 4), %ymm15
    vmovaps 2496(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 2528(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 2560(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 2592(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 2624(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 2656(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 56(%rdi, %rcx, 4), %ymm14
    vbroadcastss 248(%rdi, %rcx, 4), %ymm15
    vmovaps 2688(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 2720(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 2752(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 2784(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 2816(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 2848(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 60(%rdi, %rcx, 4), %ymm14
    vbroadcastss 252(%rdi, %rcx, 4), %ymm15
    vmovaps 2880(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 2912(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 2944(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 2976(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 3008(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 3040(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 64(%rdi, %rcx, 4), %ymm14
    vbroadcastss 256(%rdi, %rcx, 4), %ymm15
    vmovaps 3072(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 3104(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 3136(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 3168(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 3200(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 3232(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 68(%rdi, %rcx, 4), %ymm14
    vbroadcastss 260(%rdi, %rcx, 4), %ymm15
    vmovaps 3264(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 3296(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 3328(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 3360(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 3392(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 3424(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 72(%rdi, %rcx, 4), %ymm14
    vbroadcastss 264(%rdi, %rcx, 4), %ymm15
    vmovaps 3456(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 3488(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 3520(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 3552(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 3584(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 3616(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 76(%rdi, %rcx, 4), %ymm14
    vbroadcastss 268(%rdi, %rcx, 4), %ymm15
    vmovaps 3648(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 3680(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 3712(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 3744(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 3776(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 3808(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 80(%rdi, %rcx, 4), %ymm14
    vbroadcastss 272(%rdi, %rcx, 4), %ymm15
    vmovaps 3840(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 3872(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 3904(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 3936(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 3968(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 4000(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 84(%rdi, %rcx, 4), %ymm14
    vbroadcastss 276(%rdi, %rcx, 4), %ymm15
    vmovaps 4032(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 4064(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 4096(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 4128(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 4160(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 4192(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 88(%rdi, %rcx, 4), %ymm14
    vbroadcastss 280(%rdi, %rcx, 4), %ymm15
    vmovaps 4224(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 4256(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 4288(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 4320(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 4352(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 4384(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 92(%rdi, %rcx, 4), %ymm14
    vbroadcastss 284(%rdi, %rcx, 4), %ymm15
    vmovaps 4416(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 4448(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 4480(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 4512(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 4544(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 4576(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 96(%rdi, %rcx, 4), %ymm14
    vbroadcastss 288(%rdi, %rcx, 4), %ymm15
    vmovaps 4608(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 4640(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 4672(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 4704(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 4736(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 4768(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 100(%rdi, %rcx, 4), %ymm14
    vbroadcastss 292(%rdi, %rcx, 4), %ymm15
    vmovaps 4800(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 4832(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 4864(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 4896(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 4928(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 4960(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 104(%rdi, %rcx, 4), %ymm14
    vbroadcastss 296(%rdi, %rcx, 4), %ymm15
    vmovaps 4992(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 5024(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 5056(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 5088(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 5120(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 5152(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 108(%rdi, %rcx, 4), %ymm14
    vbroadcastss 300(%rdi, %rcx, 4), %ymm15
    vmovaps 5184(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 5216(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 5248(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 5280(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 5312(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 5344(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 112(%rdi, %rcx, 4), %ymm14
    vbroadcastss 304(%rdi, %rcx, 4), %ymm15
    vmovaps 5376(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 5408(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 5440(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 5472(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 5504(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 5536(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 116(%rdi, %rcx, 4), %ymm14
    vbroadcastss 308(%rdi, %rcx, 4), %ymm15
    vmovaps 5568(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 5600(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 5632(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 5664(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 5696(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 5728(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 120(%rdi, %rcx, 4), %ymm14
    vbroadcastss 312(%rdi, %rcx, 4), %ymm15
    vmovaps 5760(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 5792(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 5824(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 5856(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 5888(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 5920(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 124(%rdi, %rcx, 4), %ymm14
    vbroadcastss 316(%rdi, %rcx, 4), %ymm15
    vmovaps 5952(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 5984(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 6016(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 6048(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 6080(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 6112(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 128(%rdi, %rcx, 4), %ymm14
    vbroadcastss 320(%rdi, %rcx, 4), %ymm15
    vmovaps 6144(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 6176(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 6208(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 6240(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 6272(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 6304(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 132(%rdi, %rcx, 4), %ymm14
    vbroadcastss 324(%rdi, %rcx, 4), %ymm15
    vmovaps 6336(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 6368(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 6400(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 6432(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 6464(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 6496(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 136(%rdi, %rcx, 4), %ymm14
    vbroadcastss 328(%rdi, %rcx, 4), %ymm15
    vmovaps 6528(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 6560(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 6592(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 6624(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 6656(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 6688(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 140(%rdi, %rcx, 4), %ymm14
    vbroadcastss 332(%rdi, %rcx, 4), %ymm15
    vmovaps 6720(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 6752(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 6784(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 6816(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 6848(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 6880(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 144(%rdi, %rcx, 4), %ymm14
    vbroadcastss 336(%rdi, %rcx, 4), %ymm15
    vmovaps 6912(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 6944(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 6976(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 7008(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 7040(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 7072(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 148(%rdi, %rcx, 4), %ymm14
    vbroadcastss 340(%rdi, %rcx, 4), %ymm15
    vmovaps 7104(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 7136(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 7168(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 7200(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 7232(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 7264(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 152(%rdi, %rcx, 4), %ymm14
    vbroadcastss 344(%rdi, %rcx, 4), %ymm15
    vmovaps 7296(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 7328(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 7360(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 7392(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 7424(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 7456(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 156(%rdi, %rcx, 4), %ymm14
    vbroadcastss 348(%rdi, %rcx, 4), %ymm15
    vmovaps 7488(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 7520(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 7552(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 7584(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 7616(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 7648(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 160(%rdi, %rcx, 4), %ymm14
    vbroadcastss 352(%rdi, %rcx, 4), %ymm15
    vmovaps 7680(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 7712(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 7744(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 7776(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 7808(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 7840(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 164(%rdi, %rcx, 4), %ymm14
    vbroadcastss 356(%rdi, %rcx, 4), %ymm15
    vmovaps 7872(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 7904(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 7936(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 7968(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 8000(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 8032(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 168(%rdi, %rcx, 4), %ymm14
    vbroadcastss 360(%rdi, %rcx, 4), %ymm15
    vmovaps 8064(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 8096(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 8128(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 8160(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 8192(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 8224(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 172(%rdi, %rcx, 4), %ymm14
    vbroadcastss 364(%rdi, %rcx, 4), %ymm15
    vmovaps 8256(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 8288(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 8320(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 8352(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 8384(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 8416(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 176(%rdi, %rcx, 4), %ymm14
    vbroadcastss 368(%rdi, %rcx, 4), %ymm15
    vmovaps 8448(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 8480(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 8512(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 8544(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 8576(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 8608(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 180(%rdi, %rcx, 4), %ymm14
    vbroadcastss 372(%rdi, %rcx, 4), %ymm15
    vmovaps 8640(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 8672(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 8704(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 8736(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 8768(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 8800(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 184(%rdi, %rcx, 4), %ymm14
    vbroadcastss 376(%rdi, %rcx, 4), %ymm15
    vmovaps 8832(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 8864(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 8896(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 8928(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 8960(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 8992(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    vbroadcastss 188(%rdi, %rcx, 4), %ymm14
    vbroadcastss 380(%rdi, %rcx, 4), %ymm15
    vmovaps 9024(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm0
    vfmadd231ps %ymm12, %ymm15, %ymm6
    vmovaps 9056(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm1
    vfmadd231ps %ymm12, %ymm15, %ymm7
    vmovaps 9088(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm2
    vfmadd231ps %ymm12, %ymm15, %ymm8
    vmovaps 9120(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm3
    vfmadd231ps %ymm12, %ymm15, %ymm9
    vmovaps 9152(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm4
    vfmadd231ps %ymm12, %ymm15, %ymm10
    vmovaps 9184(%rsi), %ymm12
    vfmadd231ps %ymm12, %ymm14, %ymm5
    vfmadd231ps %ymm12, %ymm15, %ymm11

    addq $2, %rax
    addq $384, %rdi
    vmovaps %ymm0, 0(%rdx)
    vmovaps %ymm1, 32(%rdx)
    vmovaps %ymm2, 64(%rdx)
    vmovaps %ymm3, 96(%rdx)
    vmovaps %ymm4, 128(%rdx)
    vmovaps %ymm5, 160(%rdx)
    vmovaps %ymm6, 192(%rdx)
    vmovaps %ymm7, 224(%rdx)
    vmovaps %ymm8, 256(%rdx)
    vmovaps %ymm9, 288(%rdx)
    vmovaps %ymm10, 320(%rdx)
    vmovaps %ymm11, 352(%rdx)
    addq $384, %rdx
    cmpq $48, %rax
    jl loop1
    ret
