#!/bin/bash

# Read the system uptime (in seconds) from /proc/uptime
uptime_seconds=$(cut -d. -f1 /proc/uptime)

days=$((uptime_seconds / 86400))

hours=$(((uptime_seconds % 86400) / 3600))

# Calculate remaining minutes
minutes=$(((uptime_seconds % 3600) / 60))

# Calculate remaining seconds
seconds=$((uptime_seconds % 60))

echo "System has been running for: ${days} days, ${hours} hours, ${minutes} minutes, ${seconds} seconds"