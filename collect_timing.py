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