# source ~/.pyenv/versions/miniconda3-latest/bin/activate roop

####### WORKS GREAT, but not needed
# export PATH=/usr/local/cuda/bin:$PATH
# export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
# export CUDA_HOME=/usr/local/cuda

# export PATH=$HOME/local/cuda-11.7/bin:$PATH
# export LD_LIBRARY_PATH=$HOME/local/cuda-11.7/lib64:$LD_LIBRARY_PATH
# export CUDA_HOME=~/local/cuda-11.7

# https://www.tensorflow.org/install/pip#windows-wsl2
# export CUDNN_PATH=$HOME/c/roop/.venv/lib/python3.10/site-packages/nvidia/cudnn
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/c/roop/.venv/lib:$CUDNN_PATH/lib

##### WORKS GREAT, but not needed
# CUDNN_PATH=$(dirname $(poetry run python -c "import nvidia.cudnn;print(nvidia.cudnn.__file__)"))
# echo "CUDNN_PATH: $CUDNN_PATH"
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDNN_PATH/lib

if [ $# -eq 0 ]
then
CMD="poetry run python"
else
CMD="poetry $(printf ' %q' "$@")"
fi

echo "== Running: $CMD"
bash -c "$CMD"
