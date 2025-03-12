#!/bin/bash

# It determines whether the input numbers are monotonically increasing / decreasing / constant or non-monotonic.
#
# Author: Horváth-Szarka Ábel

last=""
is_monotonic=true
for arg in "$@"; do
  if [[ ! "$arg" =~ ^-?[0-9]+$ ]]; then
    echo "$arg: Invalid number"
    exit 1
  fi
  if [[ -n "$last" ]]; then
    if (( arg < last )); then
      if [[ "$monotonic" != "strictly decreasing" && "$monotonic" != "" ]]; then
        monotonic="decreasing"
      fi
    elif (( arg > last )); then
      if [[ "$monotonic" != "strictly increasing" && "$monotonic" != "" ]]; then
        monotonic="increasing"
      fi
    else
      monotonic="constant"
    fi
  fi
  last=$arg
done

echo "$monotonic"
