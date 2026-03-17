#!/bin/bash

#SBATCH --partition=gpu

#SBATCH --qos=class

#SBATCH --account=ds4125

#SBATCH --gres=gpu:1

#SBATCH --cpus-per-task=4

#SBATCH --mem=16G

#SBATCH --time=02:00:00

#SBATCH --output=logs/%x.out



module load gcc/11.4.0

module load openmpi/4.1.4

module load python/3.11.4



source /scratch/hjd3db/pytorch_resnet_cifar10/venv/bin/activate



python trainer.py --arch $ARCH --save-dir checkpoints/$ARCH
