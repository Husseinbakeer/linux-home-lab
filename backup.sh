#!/bin/bash

# Simple backup script - backs up /etc and /home to /backups

BACKUP_DIR="/backups"
DATE=$(date +%Y-%m-%d)
SOURCE_DIRS="/etc /home"

# Create backup dir if not exists
sudo mkdir -p $BACKUP_DIR

# Do the backup
sudo tar -czf $BACKUP_DIR/backup-$DATE.tar.gz $SOURCE_DIRS

echo "Backup done: $BACKUP_DIR/backup-$DATE.tar.gz"
