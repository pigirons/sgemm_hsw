as -o sgemm_kernel.o sgemm_kernel.s
gcc -O3 -c main.c
gcc -O3 -pthread -o sgemm_hsw sgemm_kernel.o main.o
