#!/bin/bash

printf "Enter an integer: "
read num1
printf "Enter another integer: "
read num2

strResult=$num1-$num2
numResult=$(($num1-$num2)) #numResult="$(($num1-$num2))"
printf "The string result is $strResult\n"
printf "The numeric result is $numResult\n"
