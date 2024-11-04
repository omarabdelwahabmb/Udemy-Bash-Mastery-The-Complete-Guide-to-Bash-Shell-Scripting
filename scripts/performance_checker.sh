#!/bin/bash

#Date Created  22/10/2023
#Date Modified 22/10/2023
#Author: Omar AbdelWahab

#Description:
#performance checker
#

performance_path="/home/cmo/Omar/Udemy - Bash Mastery The Complete Guide to Bash Shell Scripting 2021-4/performance/performance.log"


ping -c 1 10.0.10.63 &> /dev/null
if [ "$?" -eq 0 ]; then
echo "Internet: Connected" >> "$performance_path"
else
echo "Internet: Disconnected" >> "$performance_path"
fi

echo "RAM Usage :" >> "$performance_path"

free -h | grep "Mem" >> "$performance_path"

echo "Swap Usage :" >> "$performance_path"
free -h | grep "Swap" >> "$performance_path"

echo "Disk Usage :" >> "$performance_path"
df -h >> "$performance_path"

date >> "$performance_path"

echo ""

exit 0
