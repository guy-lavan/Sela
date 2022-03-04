#! /bin/bash

#set empty file and pass var
file=""
s=""
# settings for flag -f option for reading password from file feature
while getopts ":f:" flag; do
    case "${flag}" in
        f) file=${OPTARG} ;;
    esac
done

# echo to validate that pass var got the data from the -f flag
s=$(<$file)
echo 'pass is: '$s

# if else to check if password var got data  from flag or use a default pass to check
if [[ $s = "" ]] ;
then
s=DefaultPass123
else
s=$(<$file)
fi

# Set the color variable
green='\033[0;32m'
red='\033[0;31m'
# Set a variable to Clear the color back to white
clear='\033[0m'

echo "Password Check - password should contain at least:"
echo "one lower case letter, one upper case letter, One number and be over 10 chars long"

# option for user input
# echo "enter you password:"
# read s

echo  "password is $s"
# loop to check content of password var and validate it
if [[ ${#s} -ge 10 && "$s" == *[[:lower:]]* && "$s" == *[[:upper:]]* && "$s" == *[0-9]* ]]

then
        echo -e "${green}Pass! Password is Good!${clear}"
        exit 0

else
        echo -e "${red}Fail! Password does not meet required pattern !${clear}"
        exit 1
fi










