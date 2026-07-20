#!/bin/bash

LOG_DIR="logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/network_status.log"
TIMESTAMP=$(date)

# Try pinging google.com, fallback to checking internet via curl if ping fails
if ping -c 1 8.8.8.8 &> /dev/null || curl -s --head http://www.google.com &> /dev/null; then
    STATUS="ONLINE"
else
    STATUS="OFFLINE"
fi

echo "[$TIMESTAMP] Network check status: $STATUS" | tee -a "$LOG_FILE"
echo "Network check complete: $STATUS"