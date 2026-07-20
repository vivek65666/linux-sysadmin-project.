#!/bin/bash
# Network Connectivity Checker

LOG_DIR="../logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/network_status.log"

TARGET="8.8.8.8" # Google Public DNS

echo "Network Connectivity Check - $(date)" > "$LOG_FILE"
echo "-----------------------------------" >> "$LOG_FILE"

ping -c 3 "$TARGET" >> "$LOG_FILE" 2>&1

if [ $? -eq 0 ]; then
    echo "Status: ONLINE (Successfully reached $TARGET)" >> "$LOG_FILE"
    echo "Network check complete: ONLINE"
else
    echo "Status: OFFLINE (Could not reach $TARGET)" >> "$LOG_FILE"
    echo "Network check complete: OFFLINE"
fi