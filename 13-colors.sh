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
       echo -e "$2 is...$R FAILED$N"
       exit 1
  else 
      echo "-e "$2 is...$G SUCCESS"$N"
    fi
}

if [ $USERID -ne 0 ]
    then
        echo "please run this script with root priveleges"
        exit 1
    else
        echo "$2 is... SUCCESS"
    fi

dnf install git -y


if [ $? -ne 0 ]
then 
    echo "git is not installed,going to install it.."
    dnf installl git -y
   VALIDATE $? "Installing Git"
     else 
        echo "Git is already installed, nothing to do.."
    fi
    
    dnf list installed Mysql

if [ $? -ne 0 ]
then
    echo "MYSQL is not installed...going to intall"
    dnf install mysql -y
   VALIDATE $? "INSTALLING MYSQL"
    else
            echo "MY SQL is already installed..nothing to do"
    fi