#!/bin/bash

# Determines the next available UID by receiving two arguments:
#
# Author: Horváth-Szarka Ábel

min_uid=${1:-1000}
passwd_file=${2:-/etc/passwd}

used_uids=$(cut -d: -f3 "$passwd_file")

next_uid=$min_uid
while [[ " ${used_uids[@]} " =~ " $next_uid " ]]; do
  ((next_uid++))
done

echo "$next_uid"
