#!/usr/bin/bash

# Terminal color
PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

# Open MPI path
export PATH=~/.openmpi/bin$PATH
export LD_LIBRARY_PATH=~/.openmpi/lib/

# GPU
# export CUDA_HOME=/usr/local/cuda/7.5.18
# export CUDA_HOME=/usr/local/cuda/8.0.44
export CUDA_HOME=/home/name_user/software/cuda/8.0.44
# export CUDA_HOME=/usr/local/cuda/9.1.85

if [ -z ${CUDA_HOME} ]; then
        echo "CUDA_HOME is unset";
        export PATH="/home/name_user/software/anaconda3/bin:$PATH:$HOME/bin"
        export LD_LIBRARY_PATH=$LD_LIBRARY_PATH
else
        echo "CUDA_HOME is set to '$CUDA_HOME'";
        export PATH="/home/name_user/software/anaconda3/bin:${CUDA_HOME}/bin:$PATH:$HOME/bin"
        export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:${CUDA_HOME}/lib64/stubs:${CUDA_HOME}/extras/CUPTI/lib64:$LD_LIBRARY_PATH
		# export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:${CUDA_HOME}/lib64/stubs:${CUDA_HOME}/extras/CUPTI/lib64:/home/name_user/software/cudnn6/lib64:$LD_LIBRARY_PATH
fi