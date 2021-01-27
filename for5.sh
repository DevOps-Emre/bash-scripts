#!/usr/bin/env bash
echo "For loop"
for i in $(ls)
do
	echo "Found a file: $i"
	sleep 1
done
