#!/bin/bash
# This script lists all users on the system
echo "User Audit Report - $(date)" > logs/audit.log
cut -d: -f1 /etc/passwd >> logs/audit.log
echo "Audit report created in logs/audit.log"
