#!/bin/bash

uptime_seconds=$(cut -d. -f1 /proc/uptime)

days=$((uptime_seconds / 86400))
hours=$(( (uptime_seconds % 86400) / 3600 ))
minutes=$(( (uptime_seconds % 3600) / 60 ))
seconds=$(( uptime_seconds % 60 ))

echo "Komputer działa od: ${days} dni, ${hours} godzin, ${minutes} minut, ${seconds} sekund"