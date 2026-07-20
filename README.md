# Linux System Administration Automation Project

A collection of robust, automated Bash scripts designed for Linux system administration, routine maintenance, system monitoring, and health checks.

## 🛠️ Included Scripts

1. **User Audit Script (`scripts/user_audit.sh`)**
   - Automatically inspects system account details and exports a structured user report to the logs directory.
2. **Disk Usage Monitor (`scripts/disk_monitor.sh`)**
   - Tracks available storage space across mounted partitions and generates real-time disk health diagnostics.
3. **System Backup Tool (`scripts/backup_system.sh`)**
   - Compresses and archives critical project files/directories into secure timestamped tarball backups (`.tar.gz`).
4. **Network Connectivity Checker (`scripts/network_check.sh`)**
   - Pings reliable external endpoints (like public DNS) to verify and log active network connectivity status.

## 📁 Project Structure

```text
linux-sysadmin-project/
├── backups/           # Archived compressed backup files
├── logs/              # Generated system diagnostic logs
│   ├── audit.log
│   ├── backup.log
│   ├── disk_usage.log
│   └── network_status.log
├── scripts/           # Automation Bash scripts
│   ├── backup_system.sh
│   ├── disk_monitor.sh
│   ├── network_check.sh
│   └── user_audit.sh
└── README.md          # Project documentation
