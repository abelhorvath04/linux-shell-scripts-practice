#!/bin/bash

# Count the frequency of each source IP
#
# Author: Horváth-Szarka Ábel

awk -F',' '{print $2}' "$1" | sort | uniq -c | sort -nr