# 🚀 Guida rapida - Modello Minecraft per Codespaces

> ⚡ **Tutto è automatizzato.** Una volta creato il Codespace, basta eseguire 4 comandi e condividere l'indirizzo Playit.gg.

## 1. Usare il modello

- Clicca sul pulsante verde **Use this template** in cima a questo repository.
- Scegli **Create a new repository**, dagli un nome e crealo.
- Nel tuo nuovo repository, clicca su **Code** → **Create codespace on main**.

## 2. Primo avvio: pazienza (5-7 minuti)

Il Codespace si avvia ed esegue l'installazione completa automaticamente.
Vedrai i log scorrere nel terminale. **Non chiudere la finestra**; aspetta il messaggio finale che dice che tutto è pronto.

> 💡 Questa attesa si verifica solo alla **primissima creazione**. Le sessioni successive si apriranno direttamente con il server già configurato e potrai giocare in meno di un minuto.

## 3. Autenticare Playit.gg (l'unico passaggio manuale)

Nel terminale del Codespace, digita:

    playit

Apparirà un link. Aprilo nel browser, accedi al tuo account Playit.gg e clicca su **Claim Agent**.

Quindi, esegui l'agente in background:

    playit &

## 4. Avviare il server e Crafty

Copia e incolla questi 4 comandi nel terminale (l'ordine non è importante se li esegui rapidamente):

    nohup ~/keep-alive.sh &
    playit &
    ~/start.sh &
    sudo -u crafty bash -c "source /var/opt/minecraft/crafty/crafty-4/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py" &

## 5. Invitare gli amici

- Ottieni l'indirizzo pubblico dalla dashboard Playit.gg (es: `mioserver.playit.gg:12345`)
- Passalo ai tuoi amici su Minecraft (menu multigiocatore → aggiungi server)
- 🎮 Gioco fatto!

## 6. Arrestare una sessione

**Non limitarti a chiudere la scheda.**
Prima ferma il server (da Crafty o con `kill $(pgrep -f server.jar)`), poi arresta il Codespace da [github.com/codespaces](https://github.com/codespaces).

---

## 📘 Guida completa

Per una spiegazione dettagliata di ogni strumento e comando, leggi la guida completa: [GUIDE.md](GUIDE.md)

*Pronto in meno di 10 minuti, anche per un principiante assoluto.*
