#!/bin/bash

# Counts the lines of a text
#
# Author: Horváth-Szarka Ábel

line_number=1

while read -r line; do
  printf "%d %s\n" "$line_number" "$line"
  ((line_number++))
done
