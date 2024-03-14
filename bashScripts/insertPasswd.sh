#!/bin/bash

if [ -z "$1" ]
  then
	echo "Remember to supply an identifier"

elif [ -z "$2" ]
  then
	passwd=$(~/passwordManager/passgen)
	echo "$1		$passwd" >> ~/passwordManager/passwords
	echo $passwd | clip.exe
	echo "New password: $passwd"
	echo "Copied to clipboard."
elif [ -z "$3" ]
  then
	echo "$1		$2" >> ~/passwordManager/passwords
	echo "Password added."
else
	echo "Too many arguments."
fi
