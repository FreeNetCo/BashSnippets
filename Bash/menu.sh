#!/bin/bash

function help {
	printf "\t###\n"
	printf "\t# An example of an user input driven menu\n"
	printf "\t# that handles different use cases,\n"
	printf "\t# and provies a basic help function.\n"
	printf "\t###\n"
}

echo "Select from the following choices:"
select option in "cat" "dog" "quit"
do
	case $option in
		cat) echo "A cat purrs.";;
		dog) echo "The dog barks.";;
		quit) break;;
		*) help;;
	esac
done
