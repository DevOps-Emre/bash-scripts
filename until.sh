#!/usr/bin/env bash
echo "Until loop"
declare -i m=0
until (( m == 10 ))
do
	echo "m:$m"
	(( m++ ))
	sleep 1
done
