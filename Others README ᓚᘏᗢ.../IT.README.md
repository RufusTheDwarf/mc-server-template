# 🟢 Modello di Server Minecraft per GitHub Codespaces

<div align="center">

![Minecraft](https://img.shields.io/badge/Minecraft-1.21.4+-00AA00?style=flat-square&logo=minecraft&logoColor=white)
![Java](https://img.shields.io/badge/Java-21_LTS-ED8B00?style=flat-square&logo=openjdk&logoColor=white)
![PaperMC](https://img.shields.io/badge/Server-PaperMC-0069C0?style=flat-square)
![Crafty](https://img.shields.io/badge/Pannello-Crafty_Controller-F26522?style=flat-square)
![Playit.gg](https://img.shields.io/badge/Tunnel-Playit.gg-7B2FBE?style=flat-square)
![Modello](https://img.shields.io/badge/Usa_come_modello-pronto-2ea44f?style=flat-square)

</div>

> **Un clic. Zero configurazione.**  
> Un server Minecraft completo e pronto all'uso nel cloud, gratuito e operativo in meno di 10 minuti.

---

## Cosa fa questo modello?

Questo repository è un **Modello GitHub** che configura automaticamente un intero server Minecraft in un Codespace. Nessuna necessità di digitare decine di comandi: tutto è pre-installato e pre-configurato.

- ☕ **Java 21** - installato automaticamente
- 🐍 **Python 3.11** - installato automaticamente
- 🧱 **PaperMC 1.21.4** - scaricato automaticamente (ultima build stabile)
- 🎛️ **Crafty Controller** - pannello web per la gestione del server **(installato e configurato)**
- 📡 **Agente Playit.gg** - installato; solo un passaggio manuale per collegare il tuo account
- ⏳ **Script anti-sospensione** - pronto all'uso
- 💾 **Backup orari automatici** - attivi fin dall'inizio
- 🚀 **Script di avvio** con Aikar's flags - già in attesa

---

## L'unico passaggio manuale

Playit.gg richiede che un essere umano esegua l'autenticazione la prima volta. Una volta che il Codespace è pronto:

1. Esegui `playit`
2. Apri il link visualizzato nel terminale
3. Accedi e fai clic su **Claim Agent**
4. Quindi lascialo in esecuzione in background con `playit &`

Tutto il resto è già stato fatto per te.

---

## Come usarlo

1. Clicca il pulsante verde **Use this template** → crea il tuo repository
2. Nel tuo nuovo repo, clicca su **Code** → **Create codespace on main**
3. Attendi che la configurazione finisca (~5 minuti)
4. Apri il terminale e avvia il server:

    nohup ~/keep-alive.sh &
    playit &
    ~/start.sh &
    sudo -u crafty bash -c "source /var/opt/minecraft/crafty/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py" &

5. Dai l'indirizzo Playit.gg ai tuoi amici 🎮

> 📘 Guida completa passo passo: vedi `GUIDE.md` (disponibile in più lingue).

---

## Script inclusi

| Script | Scopo |
|---|---|
| `start.sh` | Avvia il server con ottimizzazioni delle prestazioni |
| `keep-alive.sh` | Impedisce che il Codespace vada in sospensione durante il gioco |
| `backup.sh` | Esegue il backup del tuo mondo ogni ora |

---

## Limitazione

Il piano gratuito di GitHub offre **120 ore-core/mese** → **60 ore reali** sulla macchina a 2 core. Non tenere il server attivo 24/7.

---

*Buon divertimento!*
