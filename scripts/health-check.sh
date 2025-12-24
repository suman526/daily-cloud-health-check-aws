#!/bin/bash

##########################################
# AUTHOR : SUMAN YADAV
# THIS IS  SCRIPT THAT CHECKS LINUX SERVER
# VERSION : 0.0.1 
##########################################

#IT WILL GET DATE AND TIME
DATE=$(date '+%Y-%m-%d %H:%M:%S')
#SYSTEM HOSTNAME
HOSTNAME=$(hostname)
#DISK USAGE OF ROOT USER
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}')
#CPU USAGE
CPU_LOAD=$(top -bn1 | grep "Cpu(s)" | awk '{print $2+$4}')
#MEMORY USAGE
MEM_USAGE=$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2}')
#REPORT FILE PATH
REPORT="/home/ubuntu/cloud-health-check/health_report.log"
#REPORT DETAILS
echo "############################################" >> $REPORT
echo "Health Check Report - $DATE" >> $REPORT
echo "Server: $HOSTNAME" >> $REPORT
echo "CPU Usage: $CPU_LOAD %" >> $REPORT
echo "Memory Usage: $MEM_USAGE" >> $REPORT
echo "Disk Usage: $DISK_USAGE" >> $REPORT
echo "############################################" >> $REPORT
echo "" >> $REPORT

