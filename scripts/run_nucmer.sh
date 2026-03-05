module load MUMmer

nucmer --threads 16 \
--prefix dsim_ref \
reference.fasta \
assembly.fasta
