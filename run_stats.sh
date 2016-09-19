#!/usr/bin/env bash

mkdir $1/sizes/INS
mkdir $1/sizes/DEL
for p in $1/*.sorted.indel; do
f="$(basename $p)"
name="${f%.*}"
echo $name
/mnt/genomerussia/ksenia/bakeoff/indels_by_samtools/count_by_kind.py INS $p > $1/sizes/INS/$name.ins.sizes;
/mnt/genomerussia/ksenia/bakeoff/indels_by_samtools/count_by_kind.py DEL $p > $1/sizes/DEL/$name.del.sizes;
done
