#!/bin/bash

# takes redirected input from stdio from a text file (see user_list.txt for format)

if [[ $# -ne 0 ]]; then echo "Usage: $0 < [TEXT FILE]" exit 1
fi

# Checks if there is a username already in use of the same name, and increments a trailing digit until a unique username
# is made
function incUser() {
	currentName=$1
	search=`cat /etc/passwd | grep -e ^($currentName)$`
	if [[ $1 =~ $search
}

set -vx
incUser
exit

id=10000
while read in; do
	# build username
	firstName=`echo "$in"| tr "A-Z" "a-z" | cut -d ',' -f 1`
	#echo "$firstName"
	lastName=`echo "$in"| tr "A-Z" "a-z" | cut -d ',' -f 2`
	#echo "$lastName"
	#echo "${lastName:0:1}"
	username=$firstName${lastName:0:1}
	fullName="$firstName_$lastName"
	echo "$fullName"

	# create group
	/usr/sbin/groupadd -g $id $username
	cat /etc/group | grep $username

	# create user
	# fullName is two strings separated by whitespace; useradd makes the first string the comment, and the second 
	# string the username. Why can't I have whitespace in my comments????
	/usr/sbin/useradd -c $fullName $username -d /home/$username -g $id -m -s /bin/bash -u $id
	cat /etc/passwd | grep $username

	# create and set password, and clear it from pw.tmp after setting
	pass=`cat /dev/urandom | tr -dc 'A-Za-z0-9' | head -c 8` 
	echo "$pass" > /tmp/pw.tmp
	cat /tmp/pw.tmp | /usr/bin/passwd --stdin $username > /dev/null 
	echo "" > /tmp/pw.tmp

	echo "Adding user $username: $pass"
	((id++))
done

