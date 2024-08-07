#!/bin/bash

from=$1
to=$2
find=$3
replace=$4

#echo "$1, $2, $3, $4"

if [[ $# -ne 4 ]]; then
 echo "Usage: [FILE1] [FILE2] [search string] [replace string]"
 exit 1
fi

if ! [[ -f $from ]]; then
 echo "$from does not exist"
 exit 1
fi

if ! [[ -f  $to ]]; then
 echo "" > $to
fi

if [[ -z $find ]]; then
 echo "Input string to replace"
 exit 1
fi

if [[ -z $to ]]; then
 echo "Input string to replace with"
 exit 1
fi

while read -r line; do
 sed -r "s/$find/$replace/g" $from > $to
done < $from
