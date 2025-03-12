#!/bin/bash

# This script generates an arithmetic sequence and returns the number, its square, and its cube.
#
# Author: Horváth-Szarka Ábel

if [[ "$1" =~ ^-?[0-9]+$ && "$2" =~ ^-?[0-9]+$ ]]; then
  start=$1
  end=$2
  interval=${3:-1}

  
  if (( start > end && interval > 0 )); then
    interval=$(( -1 * interval ))
  fi

  for (( i = start; i <= end; i += interval )); do
    echo "$i $(( i*i )) $(( i*i*i ))"
  done
else
  echo "Invalid input"
  exit 1
fi
