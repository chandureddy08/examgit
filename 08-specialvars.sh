#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "Script name: $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "Host name: $HOSTNAME"
echo "Process id of the current shell script: $$"
sleep 65
echo "Process ID of last background command: $!"