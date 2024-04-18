#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
      echo "$2 ...Failure"
      exit 1
    else
      echo "$2 ...Success"
    fi
}

if [ USERID -ne 0 ]
then
  echo "Please run this script with root access"
  exit 2
else
  echo "You are super user"
fi

dnf install mysql -y
VALIDATE $? "Installing mysql"

dnf install git -y
VALIDATE $? "Installing git"