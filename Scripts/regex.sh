#!/bin/bash

string="abcd"
regex="^abc"
# if [[ "$string" =~ "$regex" ]]; -> does not work
# if [[ "$string" =~ "^abc" ]]; -> does not work
# if [[ "$string" =~ $regex ]]; -> works
# if [[ "$string" =~ ^abc ]]; -> works
if [[ $string =~ $regex ]]; then
 echo "It matches!"
else
 echo "It doesn't match!"
fi

echo "Done"
