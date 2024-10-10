#!/bin/bash

USERID=$(id -u)
#echo "user ID IS: $USERID"

VALIDATE(){
   if [ $1 -ne 0 ]
   then
       echo "$2 is...FAILED"
       exit 1
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

VALIDATE $? "Lising Git"

# if [ $? -ne 0 ]
# then 
#     echo "git is not installed,going to install it.."
#     dnf installl git -y
#     if [ $? -ne 0 ]
#     then
#         echo "git installation is not success...check it"
#         exit 1
#      else
#          echo "git installation is success"
#      fi
#      else
#         echo "git is already installed, nothing to do.."
#     fi

#     dnf list instakked mysql

# if [ $? -ne 0 ]
# then
#     echo "MYSQL is not installed...going to install"
#     dnf install mysql -y



