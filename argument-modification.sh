#!/bin/bash

# Author: Horváth-Szarka Ábel

# when arg is more as 12 character, it cuts and replace with three dots
for arg in "$@"; do
  if [ ${#arg} -gt 12 ]; then
    echo "${arg:0:9}..."
  else
    echo "$arg"
  fi
done

# URL-Encoding for arg
for arg in "$@"; do
  echo "${arg// /%20}" | sed 's/%/%25/g'
done

# Format names, first upper-case, latters lower-case 
for name in "$@"; do
  echo "${name^}"
done

# Looks for dot in the file's name, then change fileformat name to lower-case 
for file in "$@"; do
  if [[ "$file" == *.* ]]; then
    dirname="${file%.*}"
    extension="${file##*.}"
    echo "mv \"$file\" \"${dirname}.${extension,,}\""
  else
    echo "mv \"$file\" \"$file\""
  fi
done
