#!/bin/bash

i=5
# while [[ $num >=1 ]]; do
while [[ $i -ge 1 ]]; do
 echo "i is $i"
 ((i--))	# num=$((num-1))
done

echo "Done"
