export PATH=$HOME/local/cuda-11.7/bin:$PATH
export LD_LIBRARY_PATH=$HOME/local/cuda-11.7/lib64:$LD_LIBRARY_PATH
export CUDA_HOME=~/local/cuda-11.7

export CUDNN_PATH=$HOME/c/roop/.venv/lib/python3.10/site-packages/nvidia/cudnn
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/c/roop/.venv/lib:$CUDNN_PATH/lib

if [ $# -eq 0 ]
then
CMD="poetry run python"
else
CMD="poetry $(printf ' %q' "$@")"
fi

echo "== Running: $CMD"
bash -c "$CMD"
