## Analysis done on: 
/scratch/user/samiha.islam/simulans_hifiasm

## Load repeatmasker environment
module load GCC/13.2.0
module load OpenMPI/4.1.6
module load RepeatMasker/4.1.8

## Step 2 - SLURM script 
file: repeatmasker.slurm
#!/bin/bash
#SBATCH --job-name=repeatmasker
#SBATCH --output=repeatmasker.out
#SBATCH --error=repeatmasker.err
#SBATCH --time=24:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=64G

module load GCC/13.2.0
module load OpenMPI/4.1.6
module load RepeatMasker/4.1.8

cd /scratch/user/samiha.islam/simulans_hifiasm

RepeatMasker -species "Drosophila simulans" \
             -pa $SLURM_CPUS_PER_TASK \
             asm.bp.p_ctg.fa

## Step 3 - Submit job
sbatch repeatmasker.slurm


