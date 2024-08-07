#!/bin/bash

# usage() {
function usage {
 echo "$error: $1"
 echo "usage: $0 filename"
 exit 1
}
# if [[ $# != ]]; then
if [[ $# -ne 1 ]]; then
 usage "Exactly one argument accepted!"
elif [[ ! -f $1 ]]; then
 usage "Argument must be a normal file."
fi
cat $1

printf "\nDone"
