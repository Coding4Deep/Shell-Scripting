#!/bin/bash

while true
do
    clear
    echo "🔧 Real-Time System Monitoring (updates every 2 seconds)"
    echo "---------------------------------------------------------"

    # CPU Usage
    CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $3}')
    echo " CPU Usage        : $CPU %"

    # Memory Usage
    MEM_TOTAL=$(free -m | awk '/Mem:/ {print $2  }')
    MEM_USED=$(free -m | awk '/Mem:/ {print $3 }')
    MEM_PERCENT=$(echo "scale=2; $MEM_USED * 100 / $MEM_TOTAL" | bc)
    echo " Memory Usage     : $MEM_USED MB / $MEM_TOTAL MB ($MEM_PERCENT %)"

    # Disk Usage
    DISK=$(df -h / | awk 'NR==2 {print $3 " / " $2 " (" $5 ")"}')
    echo " Disk Usage       : $DISK"

    sleep 2
done
