<div align="center">

# ⛏️ Minecraft Server Template for GitHub Codespaces

**One click. Zero configuration.**
A complete, ready-to-use Minecraft server in the cloud, free and operational in under 10 minutes.

<br>

[![Minecraft](https://img.shields.io/badge/Minecraft-1.21.4+-00AA00?style=flat&logo=minecraft&logoColor=white)](#)
[![Java](https://img.shields.io/badge/Java-21_LTS-ED8B00?style=flat&logo=openjdk&logoColor=white)](#)
[![PaperMC](https://img.shields.io/badge/Server-PaperMC-0069C0?style=flat)](#)
[![Crafty](https://img.shields.io/badge/Panel-Crafty_Controller-F26522?style=flat)](#)
[![Playit.gg](https://img.shields.io/badge/Tunnel-Playit.gg-7B2FBE?style=flat)](#)
[![Template](https://img.shields.io/badge/Use_as_template-ready-2ea44f?style=flat)](#)

<br>

[![Stars](https://img.shields.io/github/stars/RufusTheDwarf/mc-server-template?style=flat&color=yellow)](https://github.com/RufusTheDwarf/mc-server-template/stargazers)
[![Forks](https://img.shields.io/github/forks/RufusTheDwarf/mc-server-template?style=flat&color=blue)](https://github.com/RufusTheDwarf/mc-server-template/forks)
[![Issues](https://img.shields.io/github/issues/RufusTheDwarf/mc-server-template?style=flat&color=red)](https://github.com/RufusTheDwarf/mc-server-template/issues)
[![Last Commit](https://img.shields.io/github/last-commit/RufusTheDwarf/mc-server-template?style=flat&color=orange)](https://github.com/RufusTheDwarf/mc-server-template/commits/main)
[![License](https://img.shields.io/github/license/RufusTheDwarf/mc-server-template?style=flat&color=lightgrey)](https://github.com/RufusTheDwarf/mc-server-template/blob/main/LICENSE)

</div>

---

## What does this template do?

This repository is a **GitHub Template** that automatically sets up an entire Minecraft server in a Codespace. No need to type dozens of commands: everything is pre-installed and pre-configured.

- ☕ **Java 21** installed automatically
- 🐍 **Python 3.11** installed automatically
- 🧱 **PaperMC 1.21.4** automatically downloaded (latest stable build)
- 🎛️ **Crafty Controller** web panel for server management, installed and configured
- 📡 **Playit.gg agent** installed; just one manual step to link your account
- ⏳ **Anti-sleep script** ready to use
- 💾 **Automatic hourly backups** active from the start
- 🚀 **Startup script** with Aikar's flags already waiting for you

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

1. Click the green **Use this template** button and create your own repository.
2. In your new repo, click **Code** then **Create codespace on main**.
3. Wait for the setup to finish (~5 minutes).
4. Open the terminal and launch the server:

```bash
nohup ~/keep-alive.sh &
playit &
~/start.sh &
sudo -u crafty bash -c "source /var/opt/minecraft/crafty/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py" &
```

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

GitHub free tier gives **120 core-hours per month**, which means **60 real hours** on the 2-core machine. Do not run the server 24/7.

---

## Contributing

Contributions are welcome.

1. Fork the repository.
2. Create a branch:
   ```bash
   git checkout -b feature/my-feature
   ```
3. Commit your changes:
   ```bash
   git add .
   git commit -m "Add my feature"
   ```
4. Push the branch:
   ```bash
   git push origin feature/my-feature
   ```
5. Open a Pull Request.

---

## License

This project is licensed under the **MIT License**. See the `LICENSE` file for details.

---

<div align="center">

### 👤 Author

**RufusTheDwarf**

[![GitHub](https://img.shields.io/badge/GitHub-RufusTheDwarf-181717?style=flat&logo=github&logoColor=white)](https://github.com/RufusTheDwarf)
[![Repository](https://img.shields.io/badge/Repo-mc--server--template-2ea44f?style=flat&logo=git&logoColor=white)](https://github.com/RufusTheDwarf/mc-server-template)

<br>

### 💖 Acknowledgements

This template would not exist without the incredible work of the open-source community.

- [**PaperMC**](https://papermc.io/) for the high-performance Minecraft server software
- [**Crafty Controller**](https://craftycontrol.com/) for the web-based server management panel
- [**Playit.gg**](https://playit.gg/) for the free tunneling service
- [**GitHub Codespaces**](https://github.com/features/codespaces) for the cloud development environment
- [**Shields.io**](https://shields.io/) for the badges used in this README
- The Minecraft community for keeping the game alive after all these years

<br>

### ⭐ Show your support

If this template helped you, consider giving it a star. It means a lot.

[![Star this repo](https://img.shields.io/badge/⭐_Star_this_repo-yellow?style=flat)](https://github.com/RufusTheDwarf/mc-server-template/stargazers)
[![Report an issue](https://img.shields.io/badge/🐛_Report_an_issue-red?style=flat)](https://github.com/RufusTheDwarf/mc-server-template/issues)
[![Fork this repo](https://img.shields.io/badge/🍴_Fork_this_repo-blue?style=flat)](https://github.com/RufusTheDwarf/mc-server-template/fork)

<br>

---

<sub>Made with ❤️ by **RufusTheDwarf** · Licensed under MIT · © 2026</sub>

<br>

*Happy crafting!* ⛏️

</div>
