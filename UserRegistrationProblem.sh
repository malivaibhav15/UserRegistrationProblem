#!/bin/bash -x
echo "Welcome to user registration problem"
function firstName()
{
	pattern="^[A-Z][a-zA-Z]{2,}$"
	read -p "Enter the first name=" name
	if [[ $name =~ $pattern ]]
	then
		echo "$name is valid name"
	else
		echo "$name is invalid name"
	fi
}
function lastName()
{
	pattern="^[A-Z][a-zA-Z]{2,}$"
	read -p "Enter the last name=" name
	if [[ $name =~ $pattern ]]
	then
		echo "$name is valid name"
	else
		echo "$name is invalid name"
	fi
}
firstName
lastName
