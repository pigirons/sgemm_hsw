## sgemm_hsw  
***
This is an implementation of sgemm_kernel on L1d cache.  
  
Test CPU: AMD Zen2 4750G Single Core @ 4.45GHz  
A single core of Zen2 theoretical fp32 peak performance:  
4.45GHz x (8 x 2 + 8 x 2) = 142.4 GFLOPS  
  
Test case:  
`./sgemm_l1d 24 64`  
This means to compute a sgemm_kernel(m = 24, k = 64), while n is fixed to 24.  
  
Test output:  
sgemm_kernel_x64_fma(24, 24, 64): time = 0.520822 us, perf = 141.560930 GFLOPS.  
sgemm_naive result: naive.bin  
sgemm_kernel_x64_fma_m4n24 result: tuned.bin  
Use fp_diff(https://github.com/pigirons/fp_diff) to compare the results.
  
Efficiency:  
141.56093 / 142.4 = 99.4%  
  
Diff results:  
`./fp_diff naive.bin tuned.bin`  
  
Array Count:                       576  
  
Average Absolute Error:            4.387564e-07  
Max Absolute Error Position:       102  
Max Absolute Error:                3.814697e-06  
  
Average Relative Error:            2.836071e-08  
Max Relative Error Position:       102  
Max Relative Error:                2.285095e-07  
  
Number of Relative Error(>1e-1):   0  
Number of Relative Error(>1e-2):   0  
Number of Relative Error(>1e-3):   0  
Number of Relative Error(>1e-4):   0  
Number of Relative Error(>1e-5):   0  
