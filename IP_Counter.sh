#!/bin/bash

LOG_FILE="/var/log/auth.log"

echo "Top attacking IPs:"
grep "Failed password" $LOG_FILE | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr
