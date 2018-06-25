#!/usr/bin/bash

# Terminal color
PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

# Open MPI path
export PATH=~/.openmpi/bin$PATH
export LD_LIBRARY_PATH=~/.openmpi/lib/

# GPU
export CUDA_HOME=/usr/local/cuda-8.0

# using original python
# export PATH="${CUDA_HOME}/bin:$PATH"
# using anaconda python 2.7.14
export PATH="/home/name_user/software/anaconda2/bin:${CUDA_HOME}/bin:$PATH"
# using anaconda python 3.6.3 # added by Anaconda3 installer
# export PATH="/home/name_user/software/anaconda3/bin:${CUDA_HOME}/bin:$PATH"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${CUDA_HOME}/lib64:${CUDA_HOME}/extras/CUPTI/lib64:/home/name_user/software/cudnn6/lib64
