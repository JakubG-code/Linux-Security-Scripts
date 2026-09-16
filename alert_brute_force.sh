#!/usr/bin/env bash

THRESHOLD=5

echo "IPs exceeding failed login threshold ($THRESHOLD):"

sudo journalctl \
| grep "Failed password" \
| awk '{for(i=1;i<=NF;i++) if($i=="from") print $(i+1)}' \
| sort \
| uniq -c \
| while read count ip
do
    if [ "$count" -ge "$THRESHOLD" ]; then
        echo "ALERT: $ip -> $count failed logins"
    fi
done