#!/usr/bin/env bash

LOG_FILE="/var/log/auth.log"
THRESHOLD=5

echo "IPs exceeding failed login threshold ($THRESHOLD):"

grep "Failed password" "$LOG_FILE" \
| awk '{for(i=1;i<=NF;i++) if($i=="from") print $(i+1)}' \
| sort \
| uniq -c \
| while read count ip
do
    if [ "$count" -ge "$THRESHOLD" ]; then
        echo "ALERT: $ip -> $count failed logins"
    fi
done