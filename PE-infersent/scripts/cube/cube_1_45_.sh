#!/bin/bash
 
#SBATCH -J Act_cube_1
#SBATCH --mail-user=eger@ukp.informatik.tu-darmstadt.de
#SBATCH --mail-type=FAIL
#SBATCH -e /work/scratch/se55gyhe/log/output.err.%j
#SBATCH -o /work/scratch/se55gyhe/log/output.out.%j

#SBATCH -n 1 # Number of cores
#SBATCH --mem-per-cpu=2000
#SBATCH -t 23:59:00 # Hours, minutes and seconds, or '#SBATCH -t 10' -only mins
#module load intel python/3.5

python3 /home/se55gyhe/Act_func/progs/meta.py cube 1 Adamax 4 0.42438196538961004 257 0.0011523064886668438 orth PE-infersent 

