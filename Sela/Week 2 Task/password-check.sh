#! /bin/bash

# Set the color variable
green='\033[0;32m'
red='\033[0;31m'
# Set a variable to Clear the color back to white
clear='\033[0m'

echo "Password Cheack - password should contain at least:"
echo "one lower case letter, one upper case letter, One number and be over 10 chars long"

#option for user input
# echo "enter you password:"
# read password

s=aASFASFfS5123as
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










