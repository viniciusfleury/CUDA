#include <stdio.h>

/*
 * The new kernel should only do the work of 1 iteration of the original loop.
 */

__global__ void loop()
{
    printf("This is iteration number %d\n", threadIdx.x);
}

int main()
{
  /*
   * Refactoring `loop` to launch as a kernel, be sure
   * to use the execution configuration to control how many
   * "iterations" to perform.
   */

  loop<<<1, 10>>>();
  cudaDeviceSynchronize();
}
