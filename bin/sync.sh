#!/bin/sh

# Copy files

SRC="$1"
DST="$2"
FLAGS="$3"

rsync -avz -e "${FLAGS}" "${SRC}" "${DST}"
