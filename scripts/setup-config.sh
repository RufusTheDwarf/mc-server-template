#!/bin/bash

echo "=== Configuration de ton serveur Minecraft ==="
echo ""

# Demander le nom du serveur
read -p "Nom du serveur (MOTD) : " server_name
server_name=${server_name:-"Mon Serveur Minecraft"}

# Demander la difficulté
echo "Difficulté :"
echo "1) Paisible"
echo "2) Facile"
echo "3) Normal"
echo "4) Difficile"
read -p "Choisis (1-4) [3] : " difficulty_choice
difficulty_choice=${difficulty_choice:-3}

case $difficulty_choice in
    1) difficulty="peaceful" ;;
    2) difficulty="easy" ;;
    3) difficulty="normal" ;;
    4) difficulty="hard" ;;
    *) difficulty="normal" ;;
esac

# BUG CORRIGÉ : mauvais chemin (/home/codespace/server/ → ~/minecraft-server/)
mkdir -p ~/minecraft-server

cat > ~/minecraft-server/server.properties << PROPSEOF
# Configuration générée automatiquement
motd=$server_name
difficulty=$difficulty
online-mode=false
allow-flight=true
enable-command-block=false
spawn-protection=0
max-players=20
view-distance=10
simulation-distance=8
PROPSEOF

echo ""
echo "✅ Configuration terminée !"
echo "📝 Nom : $server_name"
echo "🎯 Difficulté : $difficulty"
echo "🔓 Mode offline : activé (les cracks peuvent rejoindre)"
echo ""
echo "Lance le serveur avec ta commande habituelle !"
