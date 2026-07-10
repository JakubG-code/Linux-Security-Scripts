#!/usr/bin/env bash

echo "==============================="
echo "   SYSTEM RESOURCE REPORT"
echo "==============================="
echo

# ======================
# CPU LOAD
# ======================
echo "[CPU] Load average:"
uptime | awk -F'load average:' '{print $2}'
echo

# Alternatywnie bardziej "SOC style"
echo "[CPU] CPU usage snapshot:"
top -bn1 | grep "Cpu(s)" | awk '{print "Usage:", $2 + $4 "%"}'
echo

# ======================
# RAM USAGE
# ======================
echo "[RAM] Memory usage:"
free -h | awk 'NR==2{printf "Used: %s / %s (%.2f%%)\n", $3, $2, $3*100/$2}'
echo

# ======================
# DISK USAGE
# ======================
echo "[DISK] Disk usage:"
df -h | awk '$NF=="/"{printf "Root: %s used of %s (%s)\n", $3, $2, $5}'
echo

# ======================
# TOP PROCESSES
# ======================
echo "[TOP 5 PROCESSES BY CPU]:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo

echo "==============================="
echo "Report finished"
echo "==============================="
