#include <stdio.h>

void helloCPU()
{
  printf("Hello from the CPU.\n");
}

/*
 * The function below runs on the GPU.
 */

__global__ void helloGPU()
{
  printf("Hello from the GPU.\n");
}

int main()
{

  helloCPU();

  /*
   * This function is called so that it starts as a kernel on the GPU.
   */

  helloGPU<<<1, 1>>>();

  /*
   * kernel synchronization
   */
   cudaDeviceSynchronize();
}
