#!/bin/bash

USERID=$(id -u)
#echo "user ID IS: $USERID"

if [ $USERID -ne 0 ]
then
    echo "please run this script with root priveleges"
    exit 1
fi

dnf install git -y




