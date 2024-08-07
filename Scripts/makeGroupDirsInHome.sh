#!/bin/bash

home=`whoami`

while read line; do
	name=`echo $line| cut -d ':' -f 1`
	gid=`echo $line | cut -d ':' -f 3`
	if [[ $gid -ge 10000 ]]; then
		mkdir /home/$home/Group/$name
	fi
done < <(cat /etc/group)
