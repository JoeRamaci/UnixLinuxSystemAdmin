#!/bin/bash

# also if [[ $# -ne 1 ]] -> if number of args != 1
if [[ $2 != '' ]]; then
 echo "Usage: $0 directory"
 exit 1
fi
if [[ ! -e $1 ]]; then
 echo "Error: $1 does not exist"
 exit 1
fi
if [[ ! -f $1 ]]; then
 echo "Error: $1 must not be a directory"
 exit 1
fi

file $1
 wc -l < $1 
