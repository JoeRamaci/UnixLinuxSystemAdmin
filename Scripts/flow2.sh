#!/bin/bash

if [[ -z $user ]]; then
 echo 'You need to set $user!'	# use sinlge quotes to print special chars; double quotes to evaluate
elif [[ $user = "Bruce Wayne" ]]; then
 echo "Welcome Batman!"
else
 echo "Welcome $user!"
fi
