# 🟢 Minecraft Server Template for GitHub Codespaces


![Minecraft](https://img.shields.io/badge/Minecraft-1.21.4+-00AA00?style=flat-square&logo=minecraft&logoColor=white)
![Java](https://img.shields.io/badge/Java-21_LTS-ED8B00?style=flat-square&logo=openjdk&logoColor=white)
![PaperMC](https://img.shields.io/badge/Server-PaperMC-0069C0?style=flat-square)
![Crafty](https://img.shields.io/badge/Panel-Crafty_Controller-F26522?style=flat-square)
![Playit.gg](https://img.shields.io/badge/Tunnel-Playit.gg-7B2FBE?style=flat-square)
![Template](https://img.shields.io/badge/Use_as_template-ready-2ea44f?style=flat-square)


> **One click. Zero configuration.**  
> A complete, ready-to-use Minecraft server in the cloud, free and operational in under 10 minutes.

---

## What does this template do?

This repository is a **GitHub Template** that automatically sets up an entire Minecraft server in a Codespace. No need to type dozens of commands: everything is pre-installed and pre-configured.

- ☕ **Java 21** - installed automatically
- 🐍 **Python 3.11** - installed automatically
- 🧱 **PaperMC 1.21.4** - automatically downloaded (latest stable build)
- 🎛️ **Crafty Controller** - web panel for server management **(installed and configured)**
- 📡 **Playit.gg agent** - installed; just one manual step to link your account
- ⏳ **Anti-sleep script** - ready to use
- 💾 **Automatic hourly backups** - active from the start
- 🚀 **Startup script** with Aikar's flags - already waiting for you

---

## The only manual step

Playit.gg requires a human to authenticate the first time. Once the Codespace is ready:

1. Run `playit`
2. Open the link displayed in the terminal
3. Log in and click **Claim Agent**
4. Then keep it running in the background with `playit &`

Everything else is done for you.

---

## How to use

1. Click the green **Use this template** button → create your own repository
2. In your new repo, click **Code** → **Create codespace on main**
3. Wait for the setup to finish (~5 minutes)
4. Open the terminal and launch the server:

    nohup ~/keep-alive.sh &
    playit &
    ~/start.sh &
    sudo -u crafty bash -c "source /var/opt/minecraft/crafty/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py" &

5. Give the Playit.gg address to your friends 🎮

> 📘 Full step-by-step guide: see `GUIDE.md` (available in multiple languages).

---

## Included scripts

| Script | Purpose |
|---|---|
| `start.sh` | Launches the server with performance optimisations |
| `keep-alive.sh` | Prevents the Codespace from sleeping during gameplay |
| `backup.sh` | Backs up your world every hour |

---

## Limitation

GitHub free tier gives **120 core-hours/month** → **60 real hours** on the 2-core machine. Do not run the server 24/7.

---

*Happy crafting!*
