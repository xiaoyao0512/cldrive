# cldrive - Run arbitrary OpenCL kernels

<!-- Travis CI -->
<a href="https://travis-ci.org/ChrisCummins/cldrive">
  <img src="https://img.shields.io/travis/ChrisCummins/cldrive/master.svg">
</a>
<!-- Better code -->
<a href="https://bettercodehub.com/results/ChrisCummins/cldrive">
  <img src="https://bettercodehub.com/edge/badge/ChrisCummins/cldrive?branch=master">
</a>
<!-- License -->
<a href="https://www.gnu.org/licenses/gpl-3.0.en.html" target="_blank">
  <img src="https://img.shields.io/badge/license-GNU%20GPL%20v3-blue.svg?style=flat">
</a>

[cldrive](https://github.com/ChrisCummins/cldrive) is a tool for running
arbitrary OpenCL kernels to record their runtimes and outputs. It reads OpenCL
kernels from an input file, and for each, generates random inputs
(parameterized by a given size), runs the kernel and records its execution time
and outputs. It was developed as part of my work on
[Deep Learning benchmark synthesis](https://github.com/ChrisCummins/clgen), and
has been used in the following publications:

1. Cummins, C., Petoumenos, P., Zang, W., & Leather, H. (2017). Synthesizing
   Benchmarks for Predictive Modeling. CGO. IEEE.
1. Cummins, C., Petoumenos, P., Wang, Z., & Leather, H. (2017). End-to-end
   Deep Learning of Optimization Heuristics. PACT. IEEE.
1. Ben-Nun, T., Jakobovits, A. S., & Hoefler, T. (2018). Neural Code
   Comprehension: A Learnable Representation of Code Semantics. NeurIPS.
1. Cummins, C., Petoumenos, P., Murray, A., & Leather, H. (2018). Compiler
   Fuzzing through Deep Learning. ISSTA.
1. Goens, A., Brauckmann, A., Ertel, S., Cummins, C., Leather, H., &
   Castrillon, J. (2019). A Case Study on Machine Learning for Synthesizing
   Benchmarks. MAPL.
1. Cummins, C. (2020). Deep Learning for Compilers. University of Edinburgh.

## Build

See [INSTALL.md](/INSTALL.md) for instructions on setting up the build
environment.

Then build cldrive using:

```sh
$ bazel build -c opt //gpu/cldrive --incompatible_restrict_string_escapes=false
```

This will build an optimized `cldrive` binary and print its path.

## Usage

```sh
$ cldrive --srcs=<opencl_sources> --envs=<opencl_devices>
```

Where `<opencl_sources>` if a comma separated list of absolute paths to OpenCL
source files, and `<opencl_devices>` is a comma separated list of
fully-qualified OpenCL device names. To list the available device names use
`--clinfo`. Use `--help` to see the full list of options.

### Example

For example, given a file:

```sh
$ cat kernel.cl
kernel void my_kernel(global int* a, global int* b) {
    int tid = get_global_id(0);
    a[tid] += 1;
    b[tid] = a[tid] * 2;
}
```

and available OpenCL devices:

```sh
$ cldrive --clinfo
GPU|NVIDIA|GeForce_GTX_1080|396.37|1.2
CPU|Intel|Intel_Xeon_CPU_E5-2620_v4_@_2.10GHz|1.2.0.25|2.0
```

To run the kernel 5 times on both devices using 4096 work items divided into
work groups of size 1024:

```sh
$ 
bazel-bin/gpu/cldrive/cldrive --srcs=kernel.cl --num_runs=5 --gsize=4096 --lsize=1024 --envs='GPU|NVIDIA|Tesla_V100-PCIE-32GB|440.100|1.2','CPU|Intel_CPU_Runtime_for_OpenCL(TM)_Applications|Intel_Xeon_CPU_E5-2690_v4_@_2.60GHz|18.1.0.0920|2.1'

OpenCL Device, Kernel Name, Global Size, Local Size, Transferred Bytes, Runtime (ns)
I 2019-02-26 09:54:10 [gpu/cldrive/libcldrive.cc:59] clBuildProgram() with options '-cl-kernel-arg-info' completed in 1851 ms
GPU|NVIDIA|GeForce_GTX_1080|396.37|1.2, my_kernel, 4096, 1024, 65536, 113344
GPU|NVIDIA|GeForce_GTX_1080|396.37|1.2, my_kernel, 4096, 1024, 65536, 57984
GPU|NVIDIA|GeForce_GTX_1080|396.37|1.2, my_kernel, 4096, 1024, 65536, 64096
GPU|NVIDIA|GeForce_GTX_1080|396.37|1.2, my_kernel, 4096, 1024, 65536, 73696
GPU|NVIDIA|GeForce_GTX_1080|396.37|1.2, my_kernel, 4096, 1024, 65536, 73632
I 2019-02-26 09:54:11 [gpu/cldrive/libcldrive.cc:59] clBuildProgram() with options '-cl-kernel-arg-info' completed in 76 ms
CPU|Intel|Intel_Xeon_CPU_E5-2620_v4_@_2.10GHz|1.2.0.25|2.0, my_kernel, 4096, 1024, 65536, 105440
CPU|Intel|Intel_Xeon_CPU_E5-2620_v4_@_2.10GHz|1.2.0.25|2.0, my_kernel, 4096, 1024, 65536, 55936
CPU|Intel|Intel_Xeon_CPU_E5-2620_v4_@_2.10GHz|1.2.0.25|2.0, my_kernel, 4096, 1024, 65536, 63296
CPU|Intel|Intel_Xeon_CPU_E5-2620_v4_@_2.10GHz|1.2.0.25|2.0, my_kernel, 4096, 1024, 65536, 56192
CPU|Intel|Intel_Xeon_CPU_E5-2620_v4_@_2.10GHz|1.2.0.25|2.0, my_kernel, 4096, 1024, 65536, 55680
```

By default, cldrive prints a CSV summary of kernel stats and runtimes to
stdout, and logging information to stderr. The raw information produced by
cldrive is described in a set of protocol buffers
[//gpu/cldrive/proto:cldrive.proto](/gpu/cldrive/proto/cldrive.proto). To print
`cldrive.Instances` protos to stdout, use argumet `--output_format=pbtxt`
to print text format protos, or `--output_format=pb` for binary format.


## License

Copyright 2016-2020 Chris Cummins <chrisc.101@gmail.com>.

Released under the terms of the GPLv3 license. See `LICENSE` for details.



