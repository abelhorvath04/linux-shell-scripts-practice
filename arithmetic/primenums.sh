#!/bin/bash

# This script checks whether the input numbers are prime numbers.
#
# Author: Horváth-Szarka Ábel

is_prime() {
  local num=$1
  if (( num == 1 )); then
    return 1
  fi
  for (( i = 2; i <= num / 2; i++ )); do
    if (( num % i == 0 )); then
      return 1
    fi
  done
  return 0
}

for arg in "$@"; do
  if [[ "$arg" =~ ^-?[0-9]+$ && "$arg" -gt 0 ]]; then
    is_prime "$arg"
    if (( $? == 0 )); then
      echo "$arg 1"
    else
      echo "$arg 0"
    fi
  else
    echo "$arg: Invalid number"
    exit 1
  fi
done
