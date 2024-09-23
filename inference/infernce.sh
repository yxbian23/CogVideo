#!/bin/bash

# 设置参数值
prompt="A girl riding a bike."
model_path="/group/40034/yuxuanbian/hf_models/CogVideoX-5b"
output_path="./output.mp4"
num_inference_steps=50
guidance_scale=6.0
num_videos_per_prompt=1
# dtype="bfloat16"
dtype="float16"

export CUDA_VISIBLE_DEVICES=0,1,2,3 #$CUDA_VISIBLE_DEVICES
# 运行 Python 脚本
python cli_demo.py \
    --prompt "$prompt" \
    --model_path "$model_path" \
    --output_path "$output_path" \
    --num_inference_steps "$num_inference_steps" \
    --guidance_scale "$guidance_scale" \
    --num_videos_per_prompt "$num_videos_per_prompt" \
    --dtype "$dtype"