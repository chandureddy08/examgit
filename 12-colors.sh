#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
echo -e "Script started executing at: $Y$TIMESTAMP"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
VALIDATE(){
    if [ $1 -ne 0 ]
    then
      echo -e "$2 ...$R Failure $N"
      exit 1
    else
      echo -e"$2 ...$G Success $N"
    fi
}

if [ $USERID -ne 0 ]
then
  echo "Please run this script with root access"
  exit 2
else
  echo "You are super user"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing git"

dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "Installing doker"