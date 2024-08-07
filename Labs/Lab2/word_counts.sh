#!/bin/bash

# gets input from stdin only! use cat foo.txt.  tallies words per line and prints at end

lns=0
while read line; do
 ((lns++))
 # <<< -> here-string; saves str to /tmp/sh-thd, then deletes when done. wc accepts file input
 wrds=`wc -w <<< $line | cut -f 1`
 echo "Line $lns: $wrds"
done

echo "Done"
