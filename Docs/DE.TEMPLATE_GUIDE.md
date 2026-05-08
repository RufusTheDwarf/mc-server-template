# 🚀 Schnellstart - Minecraft Codespaces-Vorlage

> ⚡ **Alles ist automatisiert.** Sobald der Codespace erstellt ist, musst du nur 4 Befehle ausführen und die Playit.gg-Adresse teilen.

## 1. Vorlage verwenden

- Klicke oben in diesem Repository auf den grünen Button **Use this template**.
- Wähle **Create a new repository**, gib ihm einen Namen und erstelle es.
- In deinem neuen Repository klicke auf **Code** → **Create codespace on main**.

## 2. Erster Start: Geduld (5-7 Minuten)

Der Codespace startet und führt die vollständige Installation automatisch aus.
Du siehst die Protokolle im Terminal. **Schließe nicht das Fenster**; warte auf die Abschlussmeldung, dass alles bereit ist.

> 💡 Diese Verzögerung tritt nur bei der **allerersten Erstellung** auf. Spätere Sitzungen öffnen sich direkt mit dem bereits konfigurierten Server, und du spielst in weniger als einer Minute.

## 3. Playit.gg authentifizieren (der einzige manuelle Schritt)

Gib im Codespace-Terminal ein:

    playit

Ein Link erscheint. Öffne ihn im Browser, melde dich bei deinem Playit.gg-Konto an und klicke auf **Claim Agent**.

Starte den Agent dann im Hintergrund:

    playit &

## 4. Server und Crafty starten

Kopiere diese 4 Befehle in das Terminal (Reihenfolge unwichtig, wenn du sie schnell nacheinander ausführst):

    nohup ~/keep-alive.sh &
    playit &
    ~/start.sh &
    sudo -u crafty bash -c "source /var/opt/minecraft/crafty/crafty-4/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py" &

## 5. Freunde einladen

- Hole die öffentliche Adresse aus dem Playit.gg-Dashboard (z. B. `meinserver.playit.gg:12345`)
- Gib sie deinen Freunden in Minecraft (Mehrspieler → Server hinzufügen)
- 🎮 Los geht's!

## 6. Sitzung beenden

**Schließe nicht einfach nur den Tab.**
Stoppe zuerst den Server (über Crafty oder `kill $(pgrep -f server.jar)`) und beende dann den Codespace über [github.com/codespaces](https://github.com/codespaces).

---

## 📘 Vollständige Anleitung

Eine detaillierte Erklärung jedes Werkzeugs und Befehls findest du in der vollständigen Anleitung: [GUIDE.md](GUIDE.md)

*Bereit in weniger als 10 Minuten, selbst für absolute Anfänger.*
