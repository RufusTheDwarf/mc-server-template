# 🟢 Minecraft-Server-Vorlage für GitHub Codespaces

<div align="center">

![Minecraft](https://img.shields.io/badge/Minecraft-1.21.4+-00AA00?style=flat-square&logo=minecraft&logoColor=white)
![Java](https://img.shields.io/badge/Java-21_LTS-ED8B00?style=flat-square&logo=openjdk&logoColor=white)
![PaperMC](https://img.shields.io/badge/Server-PaperMC-0069C0?style=flat-square)
![Crafty](https://img.shields.io/badge/Panel-Crafty_Controller-F26522?style=flat-square)
![Playit.gg](https://img.shields.io/badge/Tunnel-Playit.gg-7B2FBE?style=flat-square)
![Vorlage](https://img.shields.io/badge/Als_Vorlage_verwenden-bereit-2ea44f?style=flat-square)

</div>

> **Ein Klick. Null Konfiguration.**  
> Ein kompletter Minecraft-Server in der Cloud, kostenlos und in unter 10 Minuten einsatzbereit.

---

## Was macht diese Vorlage?

Dieses Repository ist eine **GitHub-Vorlage**, die automatisch einen vollständigen Minecraft-Server in einem Codespace einrichtet. Dutzende Befehle eingeben? Nicht nötig - alles ist vorinstalliert und vorkonfiguriert.

- ☕ **Java 21** - automatisch installiert
- 🐍 **Python 3.11** - automatisch installiert
- 🧱 **PaperMC 1.21.4** - automatisch heruntergeladen (neueste stabile Version)
- 🎛️ **Crafty Controller** - Web-Panel zur Serververwaltung **(installiert und konfiguriert)**
- 📡 **Playit.gg Agent** - installiert; nur ein manueller Schritt zur Verknüpfung deines Kontos
- ⏳ **Anti-Sleep-Skript** - einsatzbereit
- 💾 **Automatische stündliche Backups** - von Anfang an aktiv
- 🚀 **Startskript** mit Aikar's Flags - wartet bereits auf dich

---

## Der einzige manuelle Schritt

Playit.gg benötigt eine einmalige Authentifizierung durch einen Menschen. Sobald der Codespace bereit ist:

1. Führe `playit` aus
2. Öffne den im Terminal angezeigten Link
3. Melde dich an und klicke auf **Claim Agent**
4. Lass es dann mit `playit &` im Hintergrund laufen

Alles andere ist für dich erledigt.

---

## Verwendung

1. Klicke auf den grünen Button **Use this template** → erstelle dein eigenes Repository
2. In deinem neuen Repo klicke auf **Code** → **Create codespace on main**
3. Warte, bis die Einrichtung abgeschlossen ist (~5 Minuten)
4. Öffne das Terminal und starte den Server:

    nohup ~/keep-alive.sh &
    playit &
    ~/start.sh &
    sudo -u crafty bash -c "source /var/opt/minecraft/crafty/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py" &

5. Gib die Playit.gg Adresse an deine Freunde 🎮

> 📘 Vollständige Schritt-für-Schritt-Anleitung: siehe `GUIDE.md` (verfügbar in mehreren Sprachen).

---

## Enthaltene Skripte

| Skript | Zweck |
|---|---|
| `start.sh` | Startet den Server mit Leistungsoptimierungen |
| `keep-alive.sh` | Verhindert das Einschlafen des Codespace während des Spielens |
| `backup.sh` | Sichert deine Welt jede Stunde |

---

## Einschränkung

Die kostenlose GitHub-Stufe bietet **120 Kernstunden/Monat** → **60 echte Stunden** auf der 2-Kern-Maschine. Betreibe den Server nicht 24/7.

---

*Viel Spaß beim Bauen!*
