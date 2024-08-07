#!/bin/bash

totalCt=0
for file in $*; do
 ct=$(cat $file | wc -l)
 totalCt=$(($totalCt+$ct))
done
echo $totalCt

printf "\nDone"
