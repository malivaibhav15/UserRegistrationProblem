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
function eMail()
{
	pattern="^[a-z]{1,}([.+-_]?[a-z0-9]{1,})?[@]{1}[a-z0-9]{1,}[.]{1}[a-z]{1,}([.]?[a-z]{2,})?$"
	read -p "Enter the mail-id=" email
	if [[ $email =~ $pattern ]]
	then
		echo "e-Mail id is valid"
	else
		echo "e-Mail id is not valid"
	fi
}
firstName
lastName
eMail
