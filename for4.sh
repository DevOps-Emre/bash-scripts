#!/usr/bin/env bash
echo "For loop"
declare -a fruits=("apple" "banana" "cherry")
for i in ${fruits[@]}
do
	echo "Today's fruit is: $i"
	sleep 1
done
