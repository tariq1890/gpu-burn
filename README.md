# gpu-burn
This is a fork of the Multi-GPU CUDA stress test from http://wili.cc/blog/gpu-burn.html

## Setup

To run the commands below, please ensure that you have the appropriate version of the [NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/index.html) installed.

Default test duration is 10 seconds. If needed, change the [TIME] to your desired value.

# Usage

    GPU Burn
    Usage: gpu_burn [OPTIONS] [TIME]
    
    -m X   Use X MB of memory
    -m N%  Use N% of the available GPU memory
    -d     Use doubles
    -tc    Try to use Tensor cores (if available)
    -l     List all GPUs in the system
    -i N   Execute only on GPU N
    -h     Show this help message
    
    Example:
    gpu_burn -m 100% 3600

#### Running in Docker
```zsh
docker run --gpus all --rm quay.io/tariq_ibrahim/gpu-burn [OPTIONS] [TIME]
```
