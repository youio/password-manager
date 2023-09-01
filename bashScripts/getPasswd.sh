#!/bin/bash

if [ -z "$1" ]
  then
	cat ~/passwordManager/passwords
else
	grep "$1" ~/passwordManager/passwords
fi


