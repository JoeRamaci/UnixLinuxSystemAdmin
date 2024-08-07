#!bin/bash

if [[ $# -ne 1 ]]; then		#if  number of arguments is not equal to 1
 echo "usage: $0 NAME"		#tell them how to use it
 exit 1				#exit 1 (error code for bash)
fi				#end if block
echo "Hello, $1!"		#if block passes check, this will run!
