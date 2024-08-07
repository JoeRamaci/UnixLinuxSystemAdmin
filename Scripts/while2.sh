#!/bin/bash

# Accepts piped input to read lines, numerate them, and echo them

linenum=1
while read line; do
 echo "line $linenum: $line"
 ((linenum++))
done
