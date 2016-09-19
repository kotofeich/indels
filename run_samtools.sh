#!/usr/bin/env bash

ref=$2
for p in $1/*; do
f="$(basename $p)"
name="${f%.*}"
positions=$4
echo $name
#samtools mpileup -uf $ref $p | bcftools view -v indels - > $3/$name.umasked.indel; 
samtools mpileup -uf $ref --positions $positions $p | bcftools call -cv --ploidy Y - > $3/$name.indel; 
done
