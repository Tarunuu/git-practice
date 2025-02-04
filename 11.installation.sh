#!/bin/bash

USERID=$(id -u)
echo "User ID is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed gittt

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it.."
    dnf install gittt -y
    if [ $? -ne 0 ]
then 
    echo "Git installation is not success... check it"
    exit 1
else
    echo "Git is already installed, nothing to do.."
fi