
# Drosophila simulans Genome Alignment Workflow

Pipeline for aligning a hifiasm assembly to the reference genome and visualizing structural variation using SVMU2.

## Step 1 — Assembly 

Run on TAMU Grace HPRC:

```bash
hifiasm -o assembly reads.fastq

## Step 2 - Align Assembly to Reference
module load MUMmer

nucmer --threads 16 \
  --prefix dsim_ref \
  reference.fasta \
  assembly.fasta

## Output
dsim_ref.1delta

## Step 3 - Transfer delta file to home terminal
rsync -avz samiha.islam@grace.hprc.tamu.edu:/scratch/user/samiha.islam/dsim_ref.1delta

## Step 4 - Install SVMU2 locally
python3 -m venv svmu_env
source svmu_env/bin/activate
pip install -e .

## Step 5 - Plot alignment
svmu2 plot \
  --delta dsim_ref.delta \
  --out_dir ./ \
  --popup

