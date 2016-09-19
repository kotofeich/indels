#!/usr/bin/env bash

working_dir=$2
for p in $1/*; do
f="$(basename $p)"
name="${f%.*.*}"
echo $name
perl /mnt/genomerussia/ksenia/TB/bin/breakdancer/perl/bam2cfg.pl $p > ${working_dir}/${name}.config.txt;
/mnt/genomerussia/ksenia/TB/bin/breakdancer/build/bin/breakdancer-max ${working_dir}/${name}.config.txt > ${working_dir}/${name}.breakdancer.txt
done
