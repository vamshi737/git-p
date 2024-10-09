#!/bin/bash

USERID=$(id -u)
#echo "user ID IS: $USERID"

if [$USER ID -ne 0 ]
then
    echo "please run this script with root priveleges"
fi

dnf install git -y




