#!/bin/bash

#Time: 2018.05.19
#Function: Say hello to all the users in etc/passwd and tell him his uid

FILE=/etc/passwd

LINES=`wc -l $FILE | cut -d" " -f1`       # This command print num and file name, so we cut the name only use num
echo $LINES
for i in `seq 1 $LINES`                   # This command print num 1 to LINES,it's is a sequence
do
    username=`head -$i $FILE | tail -n1 |cut -d":" -f1`
    userid=`head -$i $FILE | tail -n1 | cut -d":" -f3`
    echo "Hello,$username,your userid is $userid."
done
echo "The total number of users is $LINES"
