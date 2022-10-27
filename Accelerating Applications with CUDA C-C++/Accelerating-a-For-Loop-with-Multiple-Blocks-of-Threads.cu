#include <stdio.h>

/*
 * This idiomatic expression gives each thread
 * a unique index within the entire grid.
 */

__global__ void loop()
{
  int i = blockIdx.x * blockDim.x + threadIdx.x;
  printf("%d\n", i);
}

int main()
{
  /*
   * When refactoring `loop` to launch as a kernel, be sure
   * to use the execution configuration to control how many
   * "iterations" to perform.
   */

  loop<<<2, 5>>>();
  cudaDeviceSynchronize();
}
