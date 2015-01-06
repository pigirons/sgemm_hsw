sgemm_hsw
=========

This is a sgemm implementation on Intel Haswell.

Test Environment:
Intel Core i3 4130 @ 3.4GHz.
Using one core.

Haswell theoretical peak performance:
3.4GHz * (8 * 2 + 8 * 2) = 108.8 GFLOPS.

Test Result:
AVX-tuned version check result:
avg error: 0.000000e+00, max error: 0.000000e+00, min error: 0.000000e+00.
FMA-tuned version check result:
avg error: 2.911187e-08, max error: 2.509359e-07, min error: 0.000000e+00.
Naive version: time = 110.623981s, perf = 2.096546 GFLOPS.
AVX-tuned version: time = 4.353230s, perf = 53.277275 GFLOPS.
FMA-tuned version: time = 2.203727s, perf = 105.243609 GFLOPS.

