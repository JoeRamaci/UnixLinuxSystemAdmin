#!/bin/bash

for i in 1 3 5 7 9 11 13 15; do
 echo " $i"
done

for (( i=0; i<=15; i++ )); do
 if [[ $i%2 -eq 1 ]]; then
  echo "$i"
 fi
done

echo "Done"
