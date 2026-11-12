#!/bin/bash
# Disk Usage Monitoring Script

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_DIR="$SCRIPT_DIR/../logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/disk_usage.log"

echo "Disk Usage Report - $(date)" > "$LOG_FILE"
echo "-----------------------------------" >> "$LOG_FILE"
df -h >> "$LOG_FILE"

echo "Disk usage report generated in logs/disk_usage.log"