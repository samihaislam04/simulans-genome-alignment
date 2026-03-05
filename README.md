
# Drosophila simulans Genome Alignment Workflow

Pipeline for aligning a hifiasm assembly to the reference genome and visualizing structural variation using SVMU2.

## Step 1 — Assembly 

Run on TAMU Grace HPRC:

```bash
hifiasm -o assembly reads.fastq

## Step 2 - Align Assembly to Reference
module load MUMmer

nucmer --threads 16 \  --prefix dsim_ref \  reference.fasta \  assembly.fasta

## Output
dsim_ref.1delta

## Step 3 - Transfer delta file to home terminal
rsync -avz samiha.islam@grace.hprc.tamu.edu:/scratch/user/samiha.islam/dsim_ref.1delta

## Step 4 - Install SVMU2 locally
python3 -m venv svmu_env
source svmu_env/bin/activate
pip install -e .

## Step 5 - Plot alignment
svmu2 plot    --delta dsim_ref.delta   --out_dir ./  --popup

## Step 6 - Generate interactive alignment plots using SVMU2
svmu2 interactive  --delta dsim_ref.1delta  --out_dir html_plots/

Output: html_plots/

This folder contains interactive alignment plots such as:
NC_011088.1_ptg000001l.html
NC_011089.1_ptg000001l.html
NT_167061.1_ptg000002l.html
NT_167066.1_ptg000001l.html
NT_167067.1_ptg000001l.html
NT_167068.1_ptg000001l.html
NW_002042854.1_ptg000001l.html
NW_002043037.1_ptg000001l.html
NW_002043039.1_ptg000001l.html
NW_002043040.1_ptg000001l.html

## Step 7 - View the plots
 Open any plot in a browser: open html_plots/NC_011088.1_ptg000001l.html


Each plot represents:reference scaffold/chromosome vs assembly contig



