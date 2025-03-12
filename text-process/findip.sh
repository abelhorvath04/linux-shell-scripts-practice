#!/bin/bash

# Extract and count the frequency of each IPv4 address
#
# Author: Horváth-Szarka Ábel

grep -oE '\b[0-9]{1,3}(\.[0-9]{1,3}){3}\b' "$1" | sort | uniq -c | sort -nr
