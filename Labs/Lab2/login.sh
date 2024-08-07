#!/bin/bash

n=`cat /etc/passwd | grep -i Joe | cut -d : -f 5`
t=`date "+%l:%M%P"`	# %l=hr, %M=min, %P=am/pm
echo "Welcome to $HOSTNAME, $n"
echo "You are logged in as $USERNAME, and your current directory is $PWD!"
echo "The time is $t"
