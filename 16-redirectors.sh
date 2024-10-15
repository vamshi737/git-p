#!/bin/bash

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 |cut -d "." -f1)
TIMESTAMP=$(date +%y-%m-%d-%-H-%M-%-S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log"
mkdir -p $LOGS_FOLDER

USERID=$(id -u)
R=" \e[31m"
G=" \e[32m"
G=" \e[30m"
Y=" \e[30m"

CHECK_ROOT (){
    if [ $USERID -ne 0 ]
    then 
       echo  -e "$R please run this script with root priveleges $N" &>>$LOG_FILE
       exit 1
    fi 
}

VALIDATE(){
   if [ $1 -ne 0 ]
   then
       echo -e "$2 is...$R FAILED $N" &>>$LOG_FILE
       exit 1
  else 
      echo -e "$2 is...$G SUCCESS $N" &>>$LOG_FILE
    fi
}

USAGE(){
    echo -e "$R USAGE :: $N sudo sh 16-redirectors.sh package1 package2.."
    exit 1
}
for package in $@
do
    dnf list installed $package &>>$LOG_FILE
    if [ $? -ne 0 ]
    then
        echo "$package is not installed,going to install it.." &>>$LOG_FILE
    dnf install $package -y &>>$LOG_FILE
   VALIDATE $? "Installing $package"
   else
   echo -e "$package is already $y installed..nothing to do $N" $ &>>$LOG_FILE
   fi
   done