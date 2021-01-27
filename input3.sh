#!/usr/bin/env bash
echo "Which animal"
select animal in "cat" "dog" "quit"	# User selects from the list of options
do
	case $animal in
		cat) echo "Cats like to sleep";;
		dog) echo "Dogs like to play catch";;
		quit) break;;
		*) echo "Not sure what that is";;
	esac
done
