#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "Usage: $0 boot|shutdown"
	exit 1
fi

if [ $1 != "boot" ] && [ $1 != "shutdown" ]; then
	echo "Usage: $0 boot or shutdown"
	exit 1
fi

d=`date`
if [[ $1 == "boot" ]]; then
	echo "$d $HOSTNAME booted" >> boot.log
	exit 0
else
	echo "$d $HOSTNAME $1" >> boot.log
	exit 0
fi


