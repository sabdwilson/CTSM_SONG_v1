#!/bin/bash
#SBATCH --job-name=NLDAS_forcing
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=4gb
#SBATCH --time=12:00:00
#SBATCH --partition=standard
#SBATCH --output=NLDAS_forcing_%A.out
#SBATCH --error=NLDAS_forcing_%A.err
#SBATCH --account=chopinsong

module load python/3.6/3.6.5
source /home/u8/sdwilson/app/python/bin/activate
cd /home/u8/sdwilson/data/Omics_bgc/WOOD/
python3 /home/u8/sdwilson/data/Omics_bgc/WOOD/NLDAS_forcing.py
