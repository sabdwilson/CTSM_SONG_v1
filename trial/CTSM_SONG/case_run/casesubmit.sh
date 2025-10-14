#!/bin/bash

#SBATCH --job-name=Case_submit
#SBATCH --ntasks=1
#SBATCH --nodes=1             
#SBATCH --mem=4gb                    
#SBATCH --time=00:10:00   
#SBATCH --partition=standard
#SBATCH --output=Case_submit_%A.out
#SBATCH --error=Case_submit_%A.err
#SBATCH --account=chopinsong
# SLURM Inherits your environment. cd $SLURM_SUBMIT_DIR not needed
pwd; hostname; date
source ~/.bashrc
#module list >> ./module.log
./case.submit > Run.log

