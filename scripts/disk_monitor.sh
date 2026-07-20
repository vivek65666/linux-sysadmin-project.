#!/bin/bash
# Disk Usage Monitoring Script

LOG_DIR="../logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/disk_usage.log"

echo "Disk Usage Report - $(date)" > "$LOG_FILE"
echo "-----------------------------------" >> "$LOG_FILE"
df -h >> "$LOG_FILE"

echo "Disk usage report generated in logs/disk_usage.log"