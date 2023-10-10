#!/bin/bash

#SBATCH --account=sunwbgt98
#SBATCH --job-name=main
#SBATCH --nodes=1
#SBATCH --mem=8GB
#SBATCH --time=24:00:00
#SBATCH --mail-user=xysong@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --partition=standard
#SBATCH --output=/scratch/sunwbgt_root/sunwbgt98/xysong/OOD_learning_GP_models_in_R/results.log

# cd /scratch/sunwbgt_root/sunwbgt09/xysong/OOD_learning_GP_models_in_R/

module load R
R CMD BATCH --no--save --no--restore main.R
