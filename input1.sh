#!/usr/bin/env bash
echo "Whats you name?"
read name
echo "Whats your password?"
read -s password	# -s option: dont show password
read -p "Whats your favorite animal? " animal
echo
echo -e "Name: $name\nPassword: $password\nFavorite animal: $animal"
