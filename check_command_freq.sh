#!/bin/bash
#
# Function:  check your commands frequence,list the most 10 commands


cat /home/wangyongjian/.bash_history | sort | uniq -c | sort -rn | head -n10
