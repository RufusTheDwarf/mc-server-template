# 🟢 Modelo de Servidor Minecraft para GitHub Codespaces

<div align="center">

![Minecraft](https://img.shields.io/badge/Minecraft-1.21.4+-00AA00?style=flat-square&logo=minecraft&logoColor=white)
![Java](https://img.shields.io/badge/Java-21_LTS-ED8B00?style=flat-square&logo=openjdk&logoColor=white)
![PaperMC](https://img.shields.io/badge/Servidor-PaperMC-0069C0?style=flat-square)
![Crafty](https://img.shields.io/badge/Painel-Crafty_Controller-F26522?style=flat-square)
![Playit.gg](https://img.shields.io/badge/Túnel-Playit.gg-7B2FBE?style=flat-square)
![Modelo](https://img.shields.io/badge/Usar_como_modelo-pronto-2ea44f?style=flat-square)

</div>

> **Um clique. Zero configuração.**  
> Um servidor Minecraft completo e pronto para uso na nuvem, gratuito e operacional em menos de 10 minutos.

---

## O que este modelo faz?

Este repositório é um **Modelo do GitHub** que configura automaticamente um servidor Minecraft inteiro em um Codespace. Sem precisar digitar dezenas de comandos: tudo vem pré-instalado e pré-configurado.

- ☕ **Java 21** - instalado automaticamente
- 🐍 **Python 3.11** - instalado automaticamente
- 🧱 **PaperMC 1.21.4** - baixado automaticamente (última versão estável)
- 🎛️ **Crafty Controller** - painel web para gerenciamento do servidor **(instalado e configurado)**
- 📡 **Agente Playit.gg** - instalado; apenas um passo manual para vincular sua conta
- ⏳ **Script anti-suspensão** - pronto para uso
- 💾 **Backups automáticos a cada hora** - ativos desde o início
- 🚀 **Script de inicialização** com Aikar's flags - já esperando por você

---

## O único passo manual

O Playit.gg requer que um humano faça a autenticação na primeira vez. Assim que o Codespace estiver pronto:

1. Execute `playit`
2. Abra o link exibido no terminal
3. Faça login e clique em **Claim Agent**
4. Em seguida, mantenha-o rodando em segundo plano com `playit &`

Todo o resto já está pronto para você.

---

## Como usar

1. Clique no botão verde **Use this template** → crie seu próprio repositório
2. No seu novo repositório, clique em **Code** → **Create codespace on main**
3. Aguarde a configuração terminar (~5 minutos)
4. Abra o terminal e inicie o servidor:

    nohup ~/keep-alive.sh &
    playit &
    ~/start.sh &
    sudo -u crafty bash -c "source /var/opt/minecraft/crafty/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py" &

5. Passe o endereço do Playit.gg para seus amigos 🎮

> 📘 Guia completo passo a passo: veja `GUIDE.md` (disponível em vários idiomas).

---

## Scripts incluídos

| Script | Finalidade |
|---|---|
| `start.sh` | Inicia o servidor com otimizações de desempenho |
| `keep-alive.sh` | Impede que o Codespace entre em suspensão durante o jogo |
| `backup.sh` | Faz backup do seu mundo a cada hora |

---

## Limitação

O plano gratuito do GitHub oferece **120 core-hours/mês** → **60 horas reais** na máquina de 2 núcleos. Não execute o servidor 24/7.

---

*Boas construções!*
