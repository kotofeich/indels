#!/usr/bin/env bash

ref=$2
for p in $1/*.bam; do
f="$(basename $p)"
name="${f%.*}"
positions=$4
echo $name
freebayes -b $p -f $ref -t $positions -p 1 > $3/$name.vcf
done
