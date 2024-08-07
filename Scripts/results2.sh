#!/bin/bash

# this stores the result of wc -l into the lines variable:
lines=$(wc -l /etc/passwd)

# this prints the result of wc-l to the screen:
wc -l /etc/passwd

# this runs the command and displays the results as part of the echo command:
echo "There are $(wc -l /etc/passwd) lines in the file"
printf "There are $lines lines in the file.\n"
printf "There are `wc -l /etc/passwd` lines in the file.\n"

echo 'Done!'
