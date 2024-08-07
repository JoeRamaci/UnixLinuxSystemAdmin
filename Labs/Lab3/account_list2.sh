#!/bin/bash

while read line; do
 if [[ $line =~ ([0-9]{4})+ && $line =~ ^/bin/bash$  ]]; then
	awk -F : '{print $1}' <<< $line
 elif [[ $line =~ ([0-9]{4})+ && ! $line =~ ^/bin/bash$ ]]; then
	awk -F : '{print $1 " " $3 " " $7 "*"}' <<< $line
 fi
done < /etc/passwd


