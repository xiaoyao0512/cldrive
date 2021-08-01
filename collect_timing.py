import glob,os
import re
import subprocess as sp


files = glob.glob("kernels/*.cl")
files.sort(key=lambda f: os.stat(f).st_size)

fw = open('timing', 'w')

counter = 0

for clFile in files:



    print "clFile = ", clFile
    tmp = clFile.split('/')
    filename = tmp[-1]
    filename = re.sub('\.', '_', filename)
    if ( 
        filename == "nvidia-4_2-MersenneTwister-BoxMuller" or \
        filename == "shoc-1_1_5-Scan-top_scan" or \
        filename == "npb-3_3-FT-compute_initial_conditions" or \
        filename == "shoc-1_1_5-Stencil2D-CopyRect" or \
        filename == "npb-3_3-MG-kernel_zran3_1" or \
        #filename == "npb-3_3-BT-exact_rhs1" or \
        #filename == "npb-3_3-SP-exact_rhs1" or \
        #filename == "npb-3_3-BT-initialize1" or \
        filename == "shoc-1_1_5-FFT-chk1D_512" or \
        filename == "npb-3_3-LU-setbv3" or \
        filename == "npb-3_3-LU-setbv2" or \
        #filename == "npb-3_3-SP-compute_rhs6" or \
        filename == "amd-app-sdk-3_0-SimpleConvolution-simpleSeparableConvolutionPass2" or \
        filename == "amd-app-sdk-3_0-SimpleConvolution-simpleSeparableConvolutionPass1" or \
        #filename == "npb-3_3-SP-exact_rhs5" or \
        #filename == "npb-3_3-BT-exact_rhs5" or \
        #filename == "npb-3_3-BT-compute_rhs6" or \
        #filename == "npb-3_3-LU-ssor2" or \
        filename == "shoc-1_1_5-Sort-top_scan" or \
        #filename == "npb-3_3-SP-initialize1" or \
        filename == "rodinia-3_1-cfd-compute_step_factor" or \
        filename == "npb-3_3-LU-setbv1" or \
        filename == "npb-3_3-FT-cffts1" or \
        filename == "npb-3_3-FT-cffts2" or \
        filename == "npb-3_3-FT-cffts3" or \
        filename == "rodinia-3_1-particlefilter-normalize_weights_kernel" or \
        filename == "parboil-0_2-stencil-naive_kernel" or \
        #filename == "npb-3_3-BT-compute_rhs2" or \
        #filename == "npb-3_3-SP-compute_rhs2" or \
        #filename == "npb-3_3-SP-add" or \
        filename == "npb-3_3-BT-z_solve2" or \
        filename == "npb-3_3-BT-x_solve2" or \
        filename == "npb-3_3-BT-y_solve2" or \
        filename == "npb-3_3-CG-makea_0" or \
        filename == "npb-3_3-LU-error" or \
        filename == "npb-3_3-SP-initialize2" or \
        #filename == "npb-3_3-BT-add" or \
        #filename == "npb-3_3-LU-ssor3" or \
        filename == "npb-3_3-BT-initialize2" or \
        filename == "npb-3_3-BT-initialize5" or \
        filename == "npb-3_3-BT-initialize4" or \
        filename == "npb-3_3-BT-initialize3" or \
        filename == "npb-3_3-SP-initialize5" or \
        filename == "npb-3_3-SP-initialize4" or \
        filename == "npb-3_3-SP-initialize3" or \
        filename == "npb-3_3-EP-embar" or \
        filename == "shoc-1_1_5-Sort-bottom_scan" or \
        #"npb-3_3" in filename or \
        filename == "npb-3_3-BT-z_solve" or \
        filename == "npb-3_3-BT-y_solve" or \
        filename == "npb-3_3-BT-x_solve" or \
        filename == "npb-3_3-LU-setiv" or \
        filename == "amd-app-sdk-3_0-BlackScholes-blackScholes" or \
        filename == "shoc-1_1_5-MD5Hash-FindKeyWithDigest_Kernel" or \
        filename == "amd-app-sdk-3_0-SobelFilter-sobel_filter" or \
        filename == "parboil-0_2-sad-larger_sad_calc_16" or \
        filename == "parboil-0_2-bfs-BFS_kernel" or \
        filename == "shoc-1_1_5-Scan-bottom_scan" or \
        filename == "parboil-0_2-sad-mb_sad_calc" or \
        filename == "parboil-0_2-sad-larger_sad_calc_8" or \
        filename == "rodinia-3_1-particlefilter-likelihood_kernel" or \
        filename == "rodinia-3_1-nw-nw_kernel2" or \
        filename == "rodinia-3_1-nw-nw_kernel1" or \
        filename == "shoc-1_1_5-Stencil2D-StencilKernel" or \
        filename == "nvidia-4_2-FDTD3d-FiniteDifferences" or \
        filename == "rodinia-3_1-pathfinder-dynproc_kernel" or \
        filename == "npb-3_3-MG-kernel_zran3_2" or \
        filename == "amd-app-sdk-3_0-MatrixMultiplication-mmmKernel" or \
        filename == "rodinia-3_1-leukocyte-IMGVF_kernel" or \
        filename == "rodinia-3_1-cfd-compute_flux" or \
        filename == "npb-3_3-SP-exact_rhs4" or \
        filename == "npb-3_3-BT-exact_rhs4" or \
        filename == "npb-3_3-SP-exact_rhs3" or \
        filename == "npb-3_3-BT-exact_rhs3" or \
        filename == "npb-3_3-SP-exact_rhs2" or \
        filename == "npb-3_3-BT-exact_rhs2" or \
        filename == "npb-3_3-SP-exact_rhs1" or \
        filename == "npb-3_3-BT-exact_rhs1" or \
        filename == "shoc-1_1_5-FFT-fft1D_512" or \
        filename == "shoc-1_1_5-FFT-ifft1D_512" or \
        filename == "parboil-0_2-lbm-performStreamCollide_kernel" or \
        filename == "shoc-1_1_5-GEMM-sgemmNN" or \
        filename == "shoc-1_1_5-S3D-ratxb_kernel" or \
        filename == "shoc-1_1_5-S3D-rdsmh_kernel" or \
        filename == "npb-3_3-BT-compute_rhs5" or \
        filename == "npb-3_3-SP-compute_rhs5" or \
        filename == "rodinia-3_1-gaussian-Fan1"
       ): 
        #print "I am here"
        counter += 1
        continue      
    times = 10
    print "filename = ", filename
    print "bazel-bin/gpu/cldrive/cldrive --srcs={} --num_runs={} --gsize=4096 --lsize=1024 --envs='GPU|NVIDIA|Tesla_V100-PCIE-32GB|440.100|1.2','CPU|Intel_CPU_Runtime_for_OpenCL(TM)_Applications|Intel_Xeon_CPU_E5-2690_v4_@_2.60GHz|18.1.0.0920|2.1'\n".format(clFile, times)
    
    os.system("bazel-bin/gpu/cldrive/cldrive --srcs={} --num_runs={} --gsize=4096 --lsize=1024 --envs='GPU|NVIDIA|Tesla_V100-PCIE-32GB|440.100|1.2','CPU|Intel_CPU_Runtime_for_OpenCL(TM)_Applications|Intel_Xeon_CPU_E5-2690_v4_@_2.60GHz|18.1.0.0920|2.1' > temp".format(clFile, times))
   
    fr = open('temp', 'r')
    timing_cpu = []
    timing_gpu = []
    counter = 0
    for line in fr:
        print "line = ", line
        lst = line.split(',')
        if (len(lst) > 1):
            num = lst[-1]
            num = num.rstrip()
            print "num = ", num
            if (num.isdigit()):
                if (counter < times):
                    print "111"
                    timing_gpu.append(int(num))
                elif (counter < 2*times):
                    print "222"
                    timing_cpu.append(int(num))
                else:
                    printf("You cannot reach here! Abort the program.")
                    fw.close()
                    fr.close()
                    exit(0)
                counter += 1
    fr.close()
    maxGPUVal = max(timing_gpu)
    minGPUVal = min(timing_gpu)
    avgGPUVal = sum(timing_gpu) / float(len(timing_gpu))
    maxCPUVal = max(timing_cpu)
    minCPUVal = min(timing_cpu)
    avgCPUVal = sum(timing_cpu) / float(len(timing_cpu))
    fw.write("{}\t{}\t{}\t{}\t{}\t{}\t{}".format(filename, minGPUVal, maxGPUVal, avgGPUVal, minCPUVal, maxCPUVal, avgCPUVal))

fw.close()