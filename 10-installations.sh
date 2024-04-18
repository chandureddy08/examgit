#!/bin/bash

USERID=$[id -u]

if [ $USERID -ne 0 ]
then
   echo "You are not a root user"
exit 3
else
echo " You are root user"
fi

dnf install mysql -y

if [ $? -ne 0]
then 
  echo "Installation of mysql is failure"
  exit 2
else
echo "Installation mysql is successful"
fi

dnf install git -y

if [ $? -ne 0 ]
then
  echo "Installation of git is failure"
  exit 8
else
  echo "Installation of git is successful"
fi

echo "You're all set to go"