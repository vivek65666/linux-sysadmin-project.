#!/bin/bash

BACKUP_DIR="backups"
LOG_DIR="logs"
mkdir -p "$BACKUP_DIR" "$LOG_DIR"
LOG_FILE="$LOG_DIR/backup.log"

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
ARCHIVE_NAME="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Target a safe local folder to backup (e.g., scripts folder)
SOURCE_DIR="scripts"

if [ -d "$SOURCE_DIR" ]; then
    tar -czf "$ARCHIVE_NAME" "$SOURCE_DIR"
    echo "[$TIMESTAMP] SUCCESS: Backup created at $ARCHIVE_NAME" | tee -a "$LOG_FILE"
else
    echo "[$TIMESTAMP] ERROR: Source directory $SOURCE_DIR not found." | tee -a "$LOG_FILE"
    exit 1
fi