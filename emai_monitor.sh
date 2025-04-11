#!/bin/bash

THRESHOLD=1
EMAIL="sagardeepak2002@gmail.com"

USAGE=$(df / | awk '{print $5}' | tail -n 1 | sed 's/%//ig')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    HOSTNAME=$(hostname)
    DATE=$(date)
    MESSAGE="⚠️ Disk usage on $HOSTNAME has reached ${USAGE}% as of $DATE."

    echo "$MESSAGE" | mail -s "Disk Alert on $HOSTNAME" "$EMAIL"
fi