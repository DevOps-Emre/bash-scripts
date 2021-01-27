#!/usr/bin/env bash
while read f
do
	echo "I read a line and it saysn: $f"
done < ~/textfile.txt
