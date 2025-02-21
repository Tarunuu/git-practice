#! /bin/bash

DEST_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5 #real projects, it is usually 75

while IFS= read -r line #IFS,internal field seperator, empty it will ignore while space -r is for not to ignore special characters like /
do
   echo $line
done <<< $DISK_USAGE