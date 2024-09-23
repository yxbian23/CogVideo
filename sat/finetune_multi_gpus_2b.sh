#! /bin/bash
# export XDG_CACHE=/group/40005/share/zhaoyangzhang/PretrainedCache
# export TORCH_HOME=/group/40005/share/zhaoyangzhang/PretrainedCache
# export HF_HOME=/group/40005/share/zhaoyangzhang/PretrainedCache

echo "RUN on $(hostname), CUDA_VISIBLE_DEVICES=$CUDA_VISIBLE_DEVICES"

# run_cmd="torchrun --standalone --nproc_per_node=8 train_video.py --base configs/cogvideox_2b_lora.yaml configs/sft.yaml --seed $RANDOM"
run_cmd="torchrun --standalone --nproc_per_node=$1 train_video.py --base configs/cogvideox_2b.yaml configs/sft.yaml --seed $RANDOM"

echo ${run_cmd}
eval ${run_cmd}

echo "DONE on `hostname`"
