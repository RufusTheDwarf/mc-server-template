#!/bin/bash
set -e

echo "=============================================="
echo " Minecraft Server - Configuration automatique"
echo "=============================================="

# 1. Installer les dépendances système
echo ">>> Installation de jq et autres outils..."
sudo apt-get update -qq && sudo apt-get install -y -qq jq curl wget tar git

# 2. Télécharger PaperMC
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

# 3. Mettre en place les scripts de gestion
echo ">>> Création des scripts..."

# start.sh — RAM réduite à 2G (limite Codespaces free tier = 4G total)
cat > ~/start.sh << 'STARTEOF'
#!/bin/bash
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

# 4. Installer Crafty Controller (sans script interactif)
echo ">>> Installation de Crafty Controller..."

# Créer l'utilisateur système si nécessaire
if ! id -u crafty &>/dev/null; then
    sudo adduser --system --group --home /var/opt/minecraft/crafty crafty
fi

CRAFTY_HOME="/var/opt/minecraft/crafty"
CRAFTY_DIR="$CRAFTY_HOME/crafty-4"
sudo mkdir -p "$CRAFTY_HOME"

# Cloner le dépôt Crafty 4
sudo git clone --depth 1 https://gitlab.com/crafty-controller/crafty-4.git "$CRAFTY_DIR"
sudo chown -R crafty:crafty "$CRAFTY_HOME"

# Mettre en place l'environnement virtuel
cd "$CRAFTY_DIR"
sudo -u crafty python3 -m venv "$CRAFTY_DIR/.venv"
sudo -u crafty "$CRAFTY_DIR/.venv/bin/pip" install -r requirements.txt

# BUG CORRIGÉ : chemin dynamique au lieu de /workspaces/mc-server-template/ (cassé si le repo est renommé)
WORKDIR=$(find /workspaces -maxdepth 1 -mindepth 1 -type d | head -1)
sudo mkdir -p "$CRAFTY_DIR/app/config"
sudo cp "$WORKDIR/config/default.json" "$CRAFTY_DIR/app/config/default.json"
sudo chown -R crafty:crafty "$CRAFTY_DIR/app/config"

echo "   Crafty Controller installé."

# 5. Installer l'agent Playit.gg
echo ">>> Installation de l'agent Playit.gg..."
curl -SsL https://playit-cloud.github.io/ppa/install.sh | bash

echo ""
echo "=============================================="
echo " Démarrage automatique du serveur..."
echo "=============================================="

# Démarrage automatique de tout ce qui ne nécessite pas d'auth manuelle
nohup ~/keep-alive.sh >> ~/keep-alive.log 2>&1 &
echo "   ✅ keep-alive démarré (PID $!)"

nohup ~/start.sh >> ~/minecraft-server/server.log 2>&1 &
echo "   ✅ Serveur Minecraft démarré (PID $!)"

nohup sudo -u crafty bash -c \
  'source /var/opt/minecraft/crafty/crafty-4/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py' \
  >> ~/crafty.log 2>&1 &
echo "   ✅ Crafty Controller démarré (PID $!)"

echo ""
echo "=============================================="
echo " Configuration terminée !"
echo "=============================================="
echo ""
echo "⚠️  UNE SEULE étape manuelle : authentifier Playit.gg"
echo ""
echo "  1. Lance :  playit"
echo "  2. Ouvre le lien dans ton navigateur"
echo "  3. Connecte-toi et clique sur 'Claim Agent'"
echo "  4. Relance :  playit &"
echo ""
echo "Ensuite donne l'adresse Playit.gg à tes amis et c'est parti !"
echo ""
