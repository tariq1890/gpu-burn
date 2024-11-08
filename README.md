# gpu-burn
Docker image for the Multi-GPU CUDA stress test from http://wili.cc/blog/gpu-burn.html

## Usage

To run the commands below, please ensure that you have the appropriate version of the [NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/index.html) installed.

Default test duration is 60 seconds. If needed, change <test duration> to a different value.

#### Running in Docker
```zsh
docker run --gpus all --rm quay.io/tariq_ibrahim/gpu-burn <test-duration-in-seconds>
```
