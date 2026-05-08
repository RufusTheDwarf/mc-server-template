#!/bin/bash
mkdir -p ~/minecraft-server-backups
tar -czf ~/minecraft-server-backups/world-$(date +%Y%m%d-%H%M%S).tar.gz \
  -C ~/minecraft-server world world_nether world_the_end 2>/dev/null || true
echo "$(date) - Backup effectué." >> ~/backup.log
