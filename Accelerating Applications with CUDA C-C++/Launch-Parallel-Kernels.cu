#include <stdio.h>

/*
 * The function below runs on the GPU.
 */

__global__ void firstParallel()
{
  printf("This should be running in parallel.\n");
}

int main()
{
  /*
   * firstParallel execute in parallel on the GPU.
   */

  firstParallel<<<5, 5>>>();

  /*
   * Kernel synchronization
   */
   cudaDeviceSynchronize();

}
