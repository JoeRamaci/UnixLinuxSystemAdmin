#!/bin/bash

ct=1
# until [[ $ct > 4 ]]; do
until [[ $ct -gt 4 ]]; do
 echo "count is $ct"
 ((ct++))
done
