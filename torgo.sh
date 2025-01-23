#!/bin/bash
#SBATCH --comment=torgo
#SBATCH --nodes=1
#SBATCH --gres=gpu:2
#SBATCH --mem=80G
#SBATCH --partition=gpu
#SBATCH --output=torgo.txt
#SBATCH --time=80:00:00
#SBATCH --cpus-per-task 4

export WANDB_API_KEY=4c3afe34c09a6d16cf4d203915ccc0709f368f3f
module load Anaconda3/2022.05
#module load cuDNN/8.0.4.30-CUDA-11.1.1

source activate $E/match

cd $FAST/Matcha-TTS

TORCH_USE_CUDA_DSA=1 python matcha/train.py experiment=ljspeech