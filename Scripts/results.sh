#!/bin/bash

#currentTime="$(date)"
#currentTime=$(date)
currentTime=`date`
printf "You ran this script at $currentTime\n"	#currentTime is variable that has the command date stored
printf "You ran this script at $(date)\n"	#$(date) is being evaled as a command
printf "You ran this script at `date`\n"	#same as above

echo 'Done!'
