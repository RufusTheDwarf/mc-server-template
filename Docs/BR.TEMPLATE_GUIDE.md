# 🚀 Guia rápido - Modelo Minecraft para Codespaces

> ⚡ **Tudo está automatizado.** Após criar o Codespace, basta executar 4 comandos e compartilhar o endereço do Playit.gg.

## 1. Usar o modelo

- Clique no botão verde **Use this template** no topo deste repositório.
- Escolha **Create a new repository**, dê um nome e crie-o.
- No seu novo repositório, clique em **Code** → **Create codespace on main**.

## 2. Primeiro início: paciência (5-7 minutos)

O Codespace inicia e executa a instalação completa automaticamente.
Você verá os logs passando no terminal. **Não feche a janela**; aguarde a mensagem final dizendo que tudo está pronto.

> 💡 Essa espera ocorre apenas na **primeira criação**. As sessões seguintes abrirão diretamente com o servidor já configurado, e você estará jogando em menos de um minuto.

## 3. Autenticar o Playit.gg (o único passo manual)

No terminal do Codespace, digite:

    playit

Um link aparecerá. Abra-o no seu navegador, faça login na sua conta Playit.gg e clique em **Claim Agent**.

Depois, execute o agente em segundo plano:

    playit &

## 4. Iniciar o servidor e o Crafty

Copie e cole estes 4 comandos no terminal (a ordem não importa se você os executar rapidamente):

    nohup ~/keep-alive.sh &
    playit &
    ~/start.sh &
    sudo -u crafty bash -c "source /var/opt/minecraft/crafty/crafty-4/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py" &

## 5. Convidar amigos

- Pegue o endereço público no painel do Playit.gg (ex: `meuservidor.playit.gg:12345`)
- Passe para seus amigos no Minecraft (menu multijogador → adicionar servidor)
- 🎮 Pronto!

## 6. Encerrar uma sessão

**Não basta fechar a aba.**
Primeiro pare o servidor (via Crafty ou `kill $(pgrep -f server.jar)`) e depois pare o Codespace em [github.com/codespaces](https://github.com/codespaces).

---

## 📘 Guia completo

Para uma explicação detalhada de cada ferramenta e comando, leia o guia completo: [GUIDE.md](GUIDE.md)

*Pronto em menos de 10 minutos, mesmo para um iniciante total.*
