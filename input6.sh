#!/usr/bin/env bash
if (($#<3)); then
	echo "This command requires three commands: "
	echo "username, user id, and favorite number."
else
	# the program goes here
	echo "username: $1"
	echo "user id: $2"
	echo "favorite number: $3"
fi
