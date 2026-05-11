#!/bin/bash
# BUG CORRIGÉ : shebang manquant + mauvais chemin (/home/codespace/server/ → ~/minecraft-server/)
if [ ! -f ~/minecraft-server/server.properties ]; then
    bash "$(find /workspaces -maxdepth 1 -mindepth 1 -type d | head -1)/scripts/setup-config.sh"
fi

cd ~/minecraft-server
java -Xms2G -Xmx2G \
  -XX:+UseG1GC \
  -XX:+ParallelRefProcEnabled \
  -XX:MaxGCPauseMillis=200 \
  -XX:+UnlockExperimentalVMOptions \
  -XX:+DisableExplicitGC \
  -XX:+AlwaysPreTouch \
  -XX:G1NewSizePercent=40 \
  -XX:G1MaxNewSizePercent=50 \
  -XX:G1HeapRegionSize=16M \
  -XX:G1ReservePercent=15 \
  -XX:G1HeapWastePercent=5 \
  -XX:G1MixedGCCountTarget=4 \
  -XX:InitiatingHeapOccupancyPercent=20 \
  -XX:G1MixedGCLiveThresholdPercent=90 \
  -XX:G1RSetUpdatingPauseTimePercent=5 \
  -XX:SurvivorRatio=32 \
  -XX:+PerfDisableSharedMem \
  -XX:MaxTenuringThreshold=1 \
  -jar server.jar --nogui
