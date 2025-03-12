#!/bin/bash

# For calculating the smallest, largest and sum.
#
# Author: Horváth-Szarka Ábel

min=9999999999
max=-9999999999
sum=0

for arg in "$@"; do
  if [[ "$arg" =~ ^-?[0-9]+$ ]]; then
    (( sum += arg ))
    (( arg < min )) && min=$arg
    (( arg > max )) && max=$arg
  fi
done

echo "$min $max $sum"
