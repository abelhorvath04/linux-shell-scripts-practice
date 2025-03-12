#!/bin/bash

# Sum is calculated of the digits of the input numbers, if invalid, throws an error.
#
# Author: Horváth-Szarka Ábel

for arg in "$@"; do
  if [[ "$arg" =~ ^-?[0-9]+$ && "$arg" -ge 0 ]]; then
    sum=0
    for (( i = 0; i < ${#arg}; i++ )); do
      sum=$((sum + ${arg:i:1}))
    done
    echo "$arg $sum"
  else
    echo "$arg: Invalid number"
    exit 1
  fi
done
