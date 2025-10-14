#!/bin/bash

#SBATCH --job-name=Case_build
#SBATCH --ntasks=1
#SBATCH --nodes=1             
#SBATCH --mem=4gb                    
#SBATCH --time=00:20:00   
#SBATCH --partition=standard
#SBATCH --output=Case_build_%A.out
#SBATCH --error=Case_build_%A.err
#SBATCH --account=chopinsong
# SLURM Inherits your environment. cd $SLURM_SUBMIT_DIR not needed
pwd; hostname; date
source ~/.bashrc
#module list >> ./module.log
./case.build > build.log


