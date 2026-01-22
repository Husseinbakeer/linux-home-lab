#!/bin/bash

echo "=== System Info ==="
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "CPU: $(lscpu | grep 'Model name' | awk -F: '{print $2}')"
echo "Memory: $(free -h | grep Mem | awk '{print $3"/"$2}')"
echo "Disk usage:"
df -h /
echo "Top processes by CPU:"
ps aux --sort=-%cpu | head -5
