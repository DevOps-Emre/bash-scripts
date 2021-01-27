#!/usr/bin/env bash
echo "Which animal"
select animal in "cat" "dog" "bird" "fish"
do
	echo "You selected $animal!"
	break
done
