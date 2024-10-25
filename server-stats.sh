#!/bin/bash

echo "Server Performance Stats"

# 1. Total CPU Usage
echo -e "\nTotal CPU Usage:"
top -bn1 | grep "Cpu(s)" | \
awk '{print "CPU Usage: " 100 - $8"%"}'

# 2. Total Memory Usage
echo -e "\nTotal Memory Usage:"
free -m | awk 'NR==2{printf "Memory Usage: %.2f%% (%sMB Used / %sMB Total)\n", $3*100/$2, $3, $2}'

# 3. Total Disk Usage
echo -e "\nTotal Disk Usage:"
df -h --total | awk '$1 == "total" {printf "Disk Usage: %d%% (%s Used / %s Total)\n", $5, $3, $2}'

# 4. Top 5 Processes by CPU Usage
echo -e "\nTop 5 Processes by CPU Usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

# 5. Top 5 Processes by Memory Usage
echo -e "\nTop 5 Processes by Memory Usage:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
