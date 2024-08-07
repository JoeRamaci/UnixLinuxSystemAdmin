#!/bin/bash

echo "Enter details to validate your account."
printf "First name: "
read fName
if ! [[ $fName =~ ^[A-Z]([a-z]|-)*$ ]]; then
 echo "First name may only contain 1 capital at the start and lowercase/hyphens after"
 exit 1
fi

printf "Last name: "
read lName
if ! [[ $lName =~ ^[A-Z]([a-z]|-)*$ ]]; then
 echo "Last name may only contain 1 capital at the start and lowercase/hyphens after"
 exit 1
fi

printf "Zip code: "
read zCd
if ! [[ $zCd =~ ^[0-9]{5}$ ]]; then
 echo "Zip codes contain 5 and only 5 digits"
 exit 1
fi

printf "Email address: "
read email
if ! [[ $email =~ [A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+$ ]]; then
 echo "Emails must be in format 'User@Domain' without symbols in the User or Domain."
 exit 1
fi

echo "Validated!"
