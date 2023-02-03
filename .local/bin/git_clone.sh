#!/bin/sh

# Clones git repo
USER="$1"
REPO="$2"
REPO_PATH="/home/${HOME}/dl/"

git clone "https://github.com/${USER}/${REPO}.git" "${REPO_PATH}${REPO}/"
