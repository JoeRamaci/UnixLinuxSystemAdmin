#!/bin/bash

# Accepts piped input to count lines of file

lnNum=1
while read line; do
 echo "Read line $lnNum"
 ((lnNum++))
done

echo "There were $lnNum lines. Yay."
