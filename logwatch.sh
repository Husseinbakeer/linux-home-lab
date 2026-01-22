#!/bin/bash

LOG_FILE="/var/log/syslog"

echo "Last 10 errors from syslog:"
sudo grep -i error $LOG_FILE | tail -10

echo "Failed login attempts:"
sudo grep "Failed password" $LOG_FILE | tail -10
