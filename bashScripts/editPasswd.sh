#!/bin/bash

if [ -z "$1" ]
  then
        nano -m ~/passwordManager/passwords

else
	count=$( grep -c -i "$1" ~/passwordManager/passwords )
	if [ "$count" -gt 1 ]; then
		nano -m ~/passwordManager/passwords
	else
        	lineNumber=$( grep -n -i "$1" ~/passwordManager/passwords | cut -f1 -d: )
		nano +"$lineNumber" ~/passwordManager/passwords
	fi
fi
