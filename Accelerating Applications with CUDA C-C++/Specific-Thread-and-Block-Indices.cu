#include <stdio.h>

__global__ void printSuccessForCorrectExecutionConfiguration()
{

  if(threadIdx.x == 1023 && blockIdx.x == 255)
  {
    printf("Success!\n");
  } 
}

int main()
{
  /*
   * Configuration so that the kernel will print `"Success!"`.
   */

  printSuccessForCorrectExecutionConfiguration<<<256, 1024>>>();
  
  /*
   * kernel execution is asynchronous and you must sync on its completion
   */
  cudaDeviceSynchronize();
}
