#!/usr/bin/env bash
declare -i mynumber=$(( 1 + $RANDOM % 10 ))
	read -p "I'm thinking of a number bw 1 and 10. Guess what?" theguess
	if (( theguess == mynumber )); then
		echo "You got it! Congrats"; echo
	else
		echo "Nope. I was thinking $mynumber. Try it again!"; echo
	fi
	sleep 1
