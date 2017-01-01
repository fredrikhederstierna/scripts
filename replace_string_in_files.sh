#!/bin/bash
#
# Recusively replace strings in files
# Fredrik Hederstierna 2014
#
# Usage
# ./replace.sh ARG1 ARG2 ARG3
# To replace string ARG1 with ARG2 in path ARG3.
#
# Example
# ./replace.sh "\/bin\/bash" "\/bin\/dash" mydir
# This will replace "/bin/sh" with "/bin/bash" in
# all subdirs and files recursively in "mydir".
#
echo "Recursively replace $1 with $2 in path $3"
grep -lr $1 $3 | xargs -I@ sed -i s,$1,$2,g @
