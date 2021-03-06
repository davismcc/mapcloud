#!/bin/bash
set -e

samtools index $1
bcftools mpileup -E -Ou -R ../snps.vcf -f ~/cellranger/GRCh37/fasta/genome.fa $1 | bcftools call -mv -O v -o `echo $1 | cut -f 3 -d '/'`.vcf

