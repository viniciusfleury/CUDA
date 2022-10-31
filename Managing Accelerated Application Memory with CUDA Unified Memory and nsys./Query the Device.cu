#include <stdio.h>

int main()
{
  /*
   * Assign values to these variables so that the output string below prints the
   * requested properties of the currently active GPU.
   */

  int deviceId;
  cudaGetDevice(&deviceId);
  
  cudaDeviceProp props;
  cudaGetDeviceProperties(&props, deviceId);
  
  
  int computeCapabilityMajor;
  int computeCapabilityMinor;
  int multiProcessorCount;
  int warpSize; 
  
  computeCapabilityMajor = props.major;
  computeCapabilityMinor = props.minor;
  multiProcessorCount = props.multiProcessorCount;
  warpSize = props.warpSize;
  

  /*
   * There should be no need to modify the output string below.
   */

  printf("Device ID: %d\nNumber of SMs: %d\nCompute Capability Major: %d\nCompute Capability Minor: %d\nWarp Size: %d\n", deviceId, multiProcessorCount, computeCapabilityMajor, computeCapabilityMinor, warpSize);
}
