#!/bin/bash

LOG_DIR="logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/audit.log"

echo "=== User Audit Report ===" > "$LOG_FILE"
echo "Generated on: $(date)" >> "$LOG_FILE"
echo "----------------------------------------" >> "$LOG_FILE"

if [ -f /etc/passwd ]; then
    echo "System Users (/etc/passwd):" >> "$LOG_FILE"
    cut -d: -f1 /etc/passwd >> "$LOG_FILE"
else
    echo "[Notice] /etc/passwd not found (Running in Windows/Git Bash environment)." >> "$LOG_FILE"
    echo "Current logged-in user: $USERNAME" >> "$LOG_FILE"
fi

echo "User audit complete. Saved to $LOG_FILE"s