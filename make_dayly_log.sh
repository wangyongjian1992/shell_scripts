#!/bin/bash


# Function: make a log file per day named date format xxxx-xx-xx_xx:xx:xx.log and dump disk usage into it
# for execute this job,we must use crontab service,first  ps -aux | grep cron    to check crontab service is running,
# if this is not running, sudo service cron start    to start this service
# add
#    */1 * * * * root /home/wangyongjian/shell_scripts/make_dayly_log.sh
# to /etc/crontab
# do not forget to chmod



DATE=`date +"%Y-%m-%d_%H:%M:%S"`
FILENAME="$DATE.log"
touch /home/wangyongjian/shell_scripts/$FILENAME
df >> /home/wangyongjian/shell_scripts/$FILENAME
