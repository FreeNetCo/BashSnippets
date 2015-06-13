#!/bin/bash

#if [ $# -lt 3 ]; then
	cat <<- EOM
	This command requires three arguments:
	username, userid, and favorite number.
	EOM
#else
	# program logic
	#echo $username
	#echo $userid
	#echo $favorite
#fi

read -p "What is your favorite animal? [cat] " a
while [[ -z "$a" ]]; do 
	a="cat"
done
echo "$a was selected."
