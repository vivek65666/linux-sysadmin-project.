#!/bin/bash
# System Backup Simulation Script

LOG_DIR="../logs"
BACKUP_DIR="../backups"
mkdir -p "$LOG_DIR"
mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

echo "Starting backup at $(date)" >> "$LOG_DIR/backup.log"

# Compressing the scripts directory as an example backup target
tar -czf "$BACKUP_FILE" ../scripts 2>/dev/null

if [ $? -eq 0 ]; then
    echo "Backup successfully created: $BACKUP_FILE" >> "$LOG_DIR/backup.log"
    echo "Backup completed successfully!"
else
    echo "Backup failed at $(date)" >> "$LOG_DIR/backup.log"
    echo "Backup failed."
fi