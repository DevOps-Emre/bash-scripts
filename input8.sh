#!/usr/bin/env bash
read -p "What year? [nnnn] " year
until [[ $year =~ [0-9]{4} ]]	
do
	read -p "A year, please! [nnnn] " year
done
echo "Selected year: $year"
