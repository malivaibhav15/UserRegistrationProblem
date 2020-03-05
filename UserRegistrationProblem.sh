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
	pattern="^[a-z]{1,}([.+-_]?[a-z0-9]{1,})?[@]{1}[a-z0-9]{1,}[.]{1}[a-z]{2,}([.]?[a-z]{2,})?$"
	read -p "Enter the mail-id=" email
	if [[ $email =~ $pattern ]]
	then
		echo "e-Mail id is valid"
	else
		echo "e-Mail id is not valid"
	fi
}
function mobileNumber()
{
	pattern="^[0-9]{2}[ ][0-9]{10}$"
	read -p "Enter the mobile number=" mobile
	if [[ $mobile =~ $pattern ]]
	then
		echo "Valid mobile number"
	else
		echo "Invalid mobile number"
	fi
}
function password()
{
	read -p "Enter the password=" pwd
	if [[ ${#pwd} -ge 8 ]]
	then
		result=` echo "$pwd" | grep "[A-Z]" | grep "[0-9]" | grep -o "[^a-zA-Z0-9]" `
		length=${#result}
		if [[ $length -eq 1 ]]
		then
			echo "Password entered is valid"
		else
			echo "Password entered is invalid"
		fi
	else
		echo "User should have to enter atleast 8 charecter"
	fi
}
firstName
lastName
eMail
mobileNumber
password
