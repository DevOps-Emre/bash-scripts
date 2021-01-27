#!/usr/bin/env bash
read -p "Favorite animal? " fav
while [[ -z $fav ]]
do
	read -p "I need an answer! " fav
done
echo "$fav was selected."
