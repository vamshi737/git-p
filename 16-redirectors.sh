#!/bin/bash

USERID=$(id -u)
R=" \e[31m"
G=" \e[32m"
G=" \e[30m"

CHECK_ROOT (){
    if [ $USERID -ne 0 ]
    then 
       echo "please run this script with root priveleges"
       exit 1
    fi 
}

VALIDATE(){
   if [ $1 -ne 0 ]
   then
       echo -e "$2 is...$R FAILED $N"
       exit 1
  else 
      echo -e "$2 is...$G SUCCESS $N"
    fi
}

CHECK_ROOT 