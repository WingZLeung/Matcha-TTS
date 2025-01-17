#!/bin/bash
#SBATCH --comment=torgo
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --mem=64G
#SBATCH --partition=gpu
#SBATCH --output=torgo.txt
#SBATCH --time=80:00:00
#SBATCH --cpus-per-task 4


module load Anaconda3/2022.05
#module load cuDNN/8.0.4.30-CUDA-11.1.1

source activate $E/match

cd $FAST/Matcha-TTS

python matcha/train.py experiment=ljspeech