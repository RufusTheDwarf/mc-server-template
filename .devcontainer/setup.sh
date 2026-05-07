#!/bin/bash
set -e

echo "=============================================="
echo " Minecraft Server - Configuration automatique"
echo "=============================================="

# ------------------------------------------------------------
# 1. Installer les dépendances système
# ------------------------------------------------------------
echo ">>> Installation de jq..."
sudo apt-get update -qq && sudo apt-get install -y -qq jq

# ------------------------------------------------------------
# 2. Télécharger PaperMC
# ------------------------------------------------------------
echo ">>> Téléchargement de PaperMC..."
mkdir -p ~/minecraft-server

VERSION="1.21.4"
API="https://api.papermc.io/v2/projects/paper/versions/$VERSION"
UA="mc-server-template/1.0 (contact@github.com)"

BUILD=$(curl -s -H "User-Agent: $UA" "$API" | jq -r '.builds[-1]')
echo "   Build détecté : $BUILD"

wget -q --show-progress -O ~/minecraft-server/server.jar \
  -H "User-Agent: $UA" \
  "https://api.papermc.io/v2/projects/paper/versions/$VERSION/builds/$BUILD/downloads/paper-$VERSION-$BUILD.jar"

echo "eula=true" > ~/minecraft-server/eula.txt
echo "   PaperMC $VERSION (build $BUILD) installé."

# ------------------------------------------------------------
# 3. Mettre en place les scripts de gestion
# ------------------------------------------------------------
echo ">>> Mise en place des scripts..."

# start.sh
cat > ~/start.sh << 'STARTEOF'
#!/bin/bash
cd ~/minecraft-server
java -Xms4G -Xmx4G \
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
STARTEOF
chmod +x ~/start.sh

# keep-alive.sh
cat > ~/keep-alive.sh << 'KEEPEOF'
#!/bin/bash
while true; do
    echo "$(date) - keep-alive ping" >> ~/keep-alive.log
    sleep 600
done
KEEPEOF
chmod +x ~/keep-alive.sh

# backup.sh
cat > ~/backup.sh << 'BACKEOF'
#!/bin/bash
mkdir -p ~/minecraft-server-backups
tar -czf ~/minecraft-server-backups/world-$(date +%Y%m%d-%H%M%S).tar.gz \
  -C ~/minecraft-server world world_nether world_the_end 2>/dev/null || true
echo "$(date) - Backup effectué." >> ~/backup.log
BACKEOF
chmod +x ~/backup.sh

# Planifier la sauvegarde automatique toutes les heures
(crontab -l 2>/dev/null; echo "0 * * * * /home/codespace/backup.sh") | crontab -

echo "   Scripts prêts."

# ------------------------------------------------------------
# 4. Installer Crafty Controller
# ------------------------------------------------------------
echo ">>> Installation de Crafty Controller..."

cd ~
git clone --depth 1 https://gitlab.com/crafty-controller/crafty-installer-4.0.git /tmp/crafty-installer 2>/dev/null || true
cd /tmp/crafty-installer

# Exécution non-interactive de l'installateur
sudo ./install_crafty.sh << ANSWERS

y
ANSWERS

# Copier le fichier de configuration pré-rempli (admin + mot de passe)
sudo cp /workspaces/mc-server-template/config/default.json /var/opt/minecraft/crafty/app/config/default.json
sudo chown crafty:crafty /var/opt/minecraft/crafty/app/config/default.json

echo "   Crafty Controller installé."

# ------------------------------------------------------------
# 5. Installer Playit.gg (seulement l'agent)
# ------------------------------------------------------------
echo ">>> Installation de l'agent Playit.gg..."

curl -SsL https://playit-cloud.github.io/ppa/install.sh | bash

echo ""
echo "=============================================="
echo " Configuration terminée !"
echo "=============================================="
echo ""
echo "Prochaine étape : authentifier Playit.gg"
echo "  1. Lance : playit"
echo "  2. Ouvre le lien dans ton navigateur"
echo "  3. Connecte-toi et clique sur 'Claim Agent'"
echo "  4. Relance en arrière-plan : playit &"
echo ""
echo "Pour jouer, exécute :"
echo "  nohup ~/keep-alive.sh &"
echo "  playit &"
echo "  ~/start.sh &"
echo "  sudo -u crafty bash -c 'source /var/opt/minecraft/crafty/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py' &"
echo ""
