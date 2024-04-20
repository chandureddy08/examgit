#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
then
  echo "Please run this script with root access."
  exit 3
else
  ehco "you are root use.r"
fi
