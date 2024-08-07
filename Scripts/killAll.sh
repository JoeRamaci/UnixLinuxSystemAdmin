#!/bin/bash

# give first four or so chars of username as arg
if ! [[ $# == 1 ]]; then
	echo "Usage: $0 [USER]"
	exit 1
fi

pids=`ps -ef | grep -E "^$1" | awk '{print $2}'`

for id in $pids; do
	echo "bang ($id)"
	kill -9 $id
done

echo "done"
