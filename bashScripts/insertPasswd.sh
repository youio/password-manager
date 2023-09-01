#!/bin/bash

if [ -z "$1" ]
  then
	echo "Remember to supply an identifier"
	exit 1
fi

if [ -z "$2" ]
  then
	passwd=$(~/passwordManager/passgen)
	echo "$1		$passwd" >> ~/passwordManager/passwords
	echo $passwd
else
	echo "$1		$2" >> ~/passwordManager/passwords
fi
