#!/bin/bash


#Function: check the disk usage, if the usage is greater than 80,then log it in log file named date.
# date %F means %Y-%m-%d
# tail -$[$records-1]   in shell scripts we must use [] to do the math algorithm
# awk option 'pattern {action}' file   if pattern is null,then do all the line with action;if action is null,then print all the lines
# pattern is a ZhengZe expression to pattern the lines



date=`date +"%F"`
filename=$date.log
touch /home/wangyongjian/shell_scripts/$filename
records=`df -h | wc -l`
for i in `df -h | tail -$[$records-1] | awk '{print $5}' | awk -F '%' '{print $1}'`
do
    if [ $i -gt 80 ]
    then
        echo "Disk usage is greater than 80" >> /home/wangyongjian/shell_scripts/$filename
    fi
done
