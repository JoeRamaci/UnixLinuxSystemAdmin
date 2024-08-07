#!/bin/bash

# if arg1 is not a directory and does not exist
if [[ ! -d $1 ]]; then
 echo "usage: $0 directory"
 exit 1
fi
numFilesInDier=$(ls $1 | wc -l)		# list files in arg1 and get the line count of ls output
#numFilesInDir=$(find . -type f | wc -l) <- alt method; find all files in . of type file
echo "There are $numFilesInDir files in $1"
