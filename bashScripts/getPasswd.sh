#!/bin/bash

if [ -z "$1" ]; then
	cat ~/passwordManager/passwords
else
	grep "$1" ~/passwordManager/passwords
	resultCount=$( grep -c "$1" ~/passwordManager/passwords )

	if [ "$resultCount" -eq 0 ]; then
		echo "No results."
	elif [ "$resultCount" -lt 2 ]; then
		#clip
		grep "$1" ~/passwordManager/passwords | sed 's/^.*\t\t//' | clip.exe
		echo "Password copied to clipboard."
	fi
fi


