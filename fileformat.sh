#!/bin/bash

# Echoes the fileformat based on the filenames ending
#
# Author: Horváth-Szarka Ábel

if [ $# -eq 0 ]; then
  exit 0
fi

case "$1" in
  *.txt)
    echo "Text"
    ;;
  *.html)
    echo "Hypertext"
    ;;
  *.png|*.jpg|*.gif)
    echo "Image"
    ;;
  *.js|*.mjs)
    echo "JavaScript"
    ;;
  *.css)
    echo "Stylesheet"
    ;;
  *)
    echo "Unknown"
    ;;
esac
