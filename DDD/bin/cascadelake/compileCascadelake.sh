#!/bin/bash

#SBATCH --job-name compDDDCas
#SBATCH --nodes 1
#SBATCH --cpus-per-task 16
#SBATCH --mem 32gb
#SBATCH --time 00:20:00
#SBATCH --constraint cpu_gen_cascadelake

# change the working directory
cd $SLURM_SUBMIT_DIR

microStructBuildDir=/home/$USER/bin/apptainer_compiled/cascadelake/noSolidStress/tools/MicrostructureGenerator/build/
DDompBuildDir=/home/$USER/bin/apptainer_compiled/cascadelake/noSolidStress/tools/DDomp/build/
sandBoxDir=/home/$USER/apptainer/archDDD.sandbox

# compile microstructureGenerator
cd $microStructBuildDir
rm -r *
apptainer exec $sandBoxDir cmake ..
apptainer exec $sandBoxDir make -j$SLURM_CPUS_PER_TASK
cp microstructureGenerator /home/$USER/bin/apptainer_compiled/cascadelake/microstructureGenerator_cascade

# compile DDomp
cd $DDompBuildDir
rm -rf *
apptainer exec $sandBoxDir cmake ..
apptainer exec $sandBoxDir make -j$SLURM_CPUS_PER_TASK
cp DDomp /home/$USER/bin/apptainer_compiled/cascadelake/DDomp_noSS
