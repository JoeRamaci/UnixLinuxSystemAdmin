#!/bin/bash

for file in $1; do	# * means everything. In this case, every file in the directory
 if [[ -f $file ]]; then	# if file 
  lines=`cat $file | wc -l`
  echo "$file: $lines"
 fi
done

echo "Done!"
