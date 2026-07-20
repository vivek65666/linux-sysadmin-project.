#!/bin/bash
# This script lists all users on the system

# Ensure the logs directory exists before writing to it
mkdir -p logs

echo "User Audit Report - $(date)" > logs/audit.log
echo "-----------------------------------" >> logs/audit.log
cut -d: -f1 /etc/passwd >> logs/audit.log
echo "Audit report created in logs/audit.log"