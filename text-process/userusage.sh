#!/bin/bash

# Display the space usage of files owned by a specific user within a given directory.
#
# Author: Horváth-Szarka Ábel

directory=${1:-.}
user=${2:-$(whoami)}

du -b $(find "$directory" -type f -user "$user") | awk '{s+=$1} END {print s}'
