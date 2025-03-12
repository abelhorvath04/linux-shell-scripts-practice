#!/bin/bash

# Checks if arg is positive, negative, zero or NaN
#
# Author: Horváth-Szarka Ábel

invalid=0

for arg in "$@"; do
  if [[ "$arg" =~ ^-?[0-9]+$ ]]; then
    if (( arg > 0 )); then
      echo "positive"
    elif (( arg < 0 )); then
      echo "negative"
    else
      echo "zero"
    fi
  else
    echo "not-a-number"
    invalid=1
  fi
done

exit $invalid