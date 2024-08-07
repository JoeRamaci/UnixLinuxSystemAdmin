#!/bin/bash

if [[ -z $1 ]]; then
 echo "Give me an argument to work with, man."
 exit 1
else
 wc -l $1
fi
echo 'Done!'

#can also do  if [[ $# -ne $1 ]] -> number or args is not equal to 1. This is better, becasue we are only using
# one arg to do work.
