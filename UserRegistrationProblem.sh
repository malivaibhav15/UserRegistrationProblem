#!/bin/bash -x
echo "Welcome to user registration problem".
pattern="^[A-Z][a-zA-Z]{2,}$"
read -p "Enter the name=" name
if [[ $name =~ $pattern ]]
then
	echo "$name is valid name"
else
	echo "$name is invalid name"
fi
