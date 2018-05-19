#!/bin/bash


FILE=/var

files_and_dirs=`ls $FILE`
for file in $files_and_dirs
do
    echo "Hello,log.Your name is $file"
done
