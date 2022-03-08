#!/bin/bash

# Repeat <word> <n> times.
if [[ !(($# -eq 1) || ($# -eq 2)) ]]; then
    echo "usage: mean.sh <column> [file.csv]" 1>&2
    exit 0
fi

file=${2:-/dev/stdin}
#if [[ $# -eq 3]]; then
#    file=$2
#else
#    file=/dev/stdin
#fi

cat $file | cut -d, -f $1 | tail -n +2 | { sum=0; counts=0; while read n; do sum=$(($sum+$n)); counts=$(($counts+1)); done; mean=$(echo "scale = 5; $sum / $counts" | bc); echo $mean;}
