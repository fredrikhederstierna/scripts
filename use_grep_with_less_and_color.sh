#!/bin/bash

# make grep recursive output color info, and keep colors to show in less
grep -r 'my keyword' --color=always | less -r

# make git diff output color info and show in less
#git diff --color=always | less -r

# check for files recursive
#find . | grep 'my keyword'
