#!/bin/sh
# This script is looking for aliases
# which collide with binaries names

alias_file="$HOME/.aliasrc"
aliases=$(grep alias $alias_file | cut -d ' ' -f2 | cut -d '=' -f1)
rc=0

for a in $aliases; do
    which $a > /dev/null 2>&1 && echo "error: $a is an executable" && rc=1
done

exit $rc
