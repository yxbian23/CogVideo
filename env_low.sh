export NO_PROXY=localhost,.woa.com,.oa.com,.tencent.com,.tencentcos.cn,.myqcloud.com
export HTTP_PROXY=$ENV_VENUS_PROXY
export HTTPS_PROXY=$ENV_VENUS_PROXY
export no_proxy=$NO_PROXY
export http_proxy=$ENV_VENUS_PROXY
export https_proxy=$ENV_VENUS_PROXY
source /group/40034/yuxuanbian/Video_Inpainting/AnimateDiff/network

. /data/miniconda3/etc/profile.d/conda.sh
which conda

conda create -n cog python=3.10 -y
conda activate cog

# cd /group/40034/yuxuanbian/pyrepos/diffusers
# sudo chmod -R 777 /group/40034/yuxuanbian/pyrepos/diffusers
# pip install -e .
cd /group/40034/yuxuanbian/Video_Inpainting/CogVideo
pip install -r requirements_low.txt
conda activate cog

cd /group/40034/yuxuanbian/pyrepos/DeepSpeed
pip install .

cd /group/40034/yuxuanbian/pyrepos/diffusers
pip install -e .

conda activate cog