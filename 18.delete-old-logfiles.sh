#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ -d $SOURCE_DIR ]
then
    echo -e "$SOURCE_DIR Exists $N"
else
    echo -e "$SOURCE_DIR does not exist $N"
    exit 1
fi

FILES=$(find $SOURCE_DIR -name "*log") 
echo "Files: $FILES"

while IFS= read line #IFS,internal field seperator, empty it will ignore while space -r is for not to ignore special characters like /
do
    echo "Deleting line: $line"
    # rm -rf $line
done <<< $FILES