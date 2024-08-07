#!/bin/bash

# check if file exists
if [[ ! -f $3 ]]; then
 echo "$3 does not exist"
 exit 1
fi

# check if args are present
if [[ -z $1 ]]; then
 echo "Usage: $0 [START LINE] [stop line] [file]"
 exit 1
fi
if [[ -z $2 ]]; then
 echo "Usage: $0 [start line] [STOP LINE] [file]"
 exit 1
fi
if [[ -z $3 ]]; then
 echo "Usage: $0 [start line] [stop line] [FILE]"
 exit 1
fi

# check if $1 < $2
if [[ $2 -le $1 ]]; then
 echo "$1 is not less than or equal to $2"
 exit 1
fi

# check if file lines <= $2
fLns=`wc -l $3 | cut -d " " -f 1`
if [[ $fLns -lt $2 ]]; then
 echo "Lines in $3 less than $2 ($fLns)"
 exit 1
fi

st=$1
stp=$2
f=$3
lns=$(($stp - $(($st - 1)))) # get lines between $1 and $2 inclusively (get 7-10 -> 4 lines, not 3)

head -n $stp $f | tail -n $lns

echo "Done"
