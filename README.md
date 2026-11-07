 <div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:10231A,35:245B35,70:4E853D,100:A5B96A&height=230&section=header&text=MINECRAFT%20SERVER&fontSize=43&fontColor=F4F1DE&fontAlignY=37&desc=GITHUB%20CODESPACES%20%2F%20PAPERMC%20%2F%20PLAYIT.GG&descAlignY=59&descSize=14" width="100%" alt="Minecraft Server banner"/>

<img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&weight=600&size=17&duration=3000&pause=900&color=9CCB83&center=true&vCenter=true&width=800&lines=Your+Minecraft+server+in+the+cloud;Automated+provisioning+with+GitHub+Codespaces;PaperMC+%2B+Crafty+Controller+%2B+Playit.gg" alt="Animated project description"/>

<br>

[![Minecraft](https://img.shields.io/badge/Minecraft-1.21.4-4B8B3B?style=flat&logo=minecraft&logoColor=white)](https://www.minecraft.net/)
[![Java](https://img.shields.io/badge/Java-21_LTS-ED8B00?style=flat&logo=openjdk&logoColor=white)](https://openjdk.org/)
[![PaperMC](https://img.shields.io/badge/Server-PaperMC-356B45?style=flat)](https://papermc.io/)
[![Codespaces](https://img.shields.io/badge/Cloud-GitHub_Codespaces-181717?style=flat&logo=github)](https://github.com/features/codespaces)
[![Crafty](https://img.shields.io/badge/Panel-Crafty_Controller-EA713F?style=flat)](https://craftycontrol.com/)
[![Playit](https://img.shields.io/badge/Tunnel-Playit.gg-8050AE?style=flat)](https://playit.gg/)

[![Stars](https://img.shields.io/github/stars/RufusTheDwarf/mc-server-template?style=flat&color=D6B64C)](https://github.com/RufusTheDwarf/mc-server-template/stargazers)
[![Forks](https://img.shields.io/github/forks/RufusTheDwarf/mc-server-template?style=flat&color=6A9C72)](https://github.com/RufusTheDwarf/mc-server-template/forks)
[![Issues](https://img.shields.io/github/issues/RufusTheDwarf/mc-server-template?style=flat&color=C96857)](https://github.com/RufusTheDwarf/mc-server-template/issues)
[![Last Commit](https://img.shields.io/github/last-commit/RufusTheDwarf/mc-server-template?style=flat&color=9B9B65)](https://github.com/RufusTheDwarf/mc-server-template/commits/main)
[![License](https://img.shields.io/github/license/RufusTheDwarf/mc-server-template?style=flat&color=BBBBBB)](LICENSE)

<br>

[**Use this template**](https://github.com/RufusTheDwarf/mc-server-template/generate) · [**Installation guide**](Docs/EN.TEMPLATE_GUIDE.md) · [**Issues**](https://github.com/RufusTheDwarf/mc-server-template/issues)

</div>

---

<div align="center">

<img src="https://api.iconify.design/game-icons:grass.svg?color=%238DBD74" width="54" height="54" alt="Grass icon"/>
<img src="https://api.iconify.design/game-icons:stone-block.svg?color=%23989B9D" width="54" height="54" alt="Stone icon"/>
<img src="https://api.iconify.design/game-icons:chest.svg?color=%23C69C53" width="54" height="54" alt="Chest icon"/>
<img src="https://api.iconify.design/game-icons:crafting.svg?color=%238DBD74" width="54" height="54" alt="Crafting icon"/>

**Build the environment. Start the server. Invite your friends.**

</div>

## About the project

This repository is a reusable GitHub template that provisions a Minecraft Java server inside a GitHub Codespace.

It brings together the server software, administration panel and public connection tunnel in one cloud environment. The setup script handles most of the installation automatically.

No manual Java installation or local Linux server configuration is required.

### What's included

<div align="center">

| Component | Role |
|:---:|---|
| **PaperMC 1.21.4** | Minecraft Java server |
| **Java 21** | Server runtime |
| **Crafty Controller** | Web-based administration panel |
| **Playit.gg** | Public Minecraft connection tunnel |
| **Python 3.11** | Crafty Controller dependency |
| **GitHub Codespaces** | Cloud Linux environment |
| **Backup scripts** | Scheduled world archives |

</div>

## Visual overview

<div align="center">

<img src="https://skillicons.dev/icons?i=java,python,bash,linux,git,github&theme=dark" alt="Java, Python, Bash, Linux, Git and GitHub technology icons"/>

</div>

The environment follows this architecture:

```mermaid
flowchart TB
    A["GitHub Template Repository"] --> B["GitHub Codespaces"]
    B --> C["Automatic Provisioning"]

    C --> D["PaperMC Server"]
    C --> E["Crafty Controller"]
    C --> F["Playit.gg Agent"]
    C --> G["Backup Scheduler"]

    H["Minecraft Players"] --> I["Public Playit Tunnel"]
    I --> D

    J["Administrator"] --> K["Codespaces Port 8443"]
    K --> E

    G --> L["Local Backup Archives"]

    style A fill:#234B32,color:#fff,stroke:#8DBD74
    style B fill:#234B32,color:#fff,stroke:#8DBD74
    style C fill:#356B45,color:#fff,stroke:#A5B96A
    style D fill:#356B45,color:#fff,stroke:#A5B96A
    style E fill:#A65335,color:#fff,stroke:#EAA16A
    style F fill:#62458A,color:#fff,stroke:#B69CE0
    style G fill:#80672C,color:#fff,stroke:#D6B64C
```

**Connection flow:** players connect through Playit.gg, which forwards traffic to the PaperMC server running inside the Codespace.

**Administration flow:** the administrator accesses Crafty Controller through the forwarded Codespaces port.

## Getting started

### 1. Create your own repository

Click the button below:

[![Use this template](https://img.shields.io/badge/USE_THIS_TEMPLATE-Create_your_own_server-356B45?style=flat&logo=github&logoColor=white)](https://github.com/RufusTheDwarf/mc-server-template/generate)

Select **Create a new repository**, choose a name and create it.

### 2. Create a Codespace

In your new repository:

1. Open the **Code** menu.
2. Select the **Codespaces** tab.
3. Click **Create codespace on main**.

The `.devcontainer` configuration automatically launches the provisioning process.

### 3. Automatic installation

The main installation script is:

```bash
.devcontainer/setup.sh
```

It performs the following operations:

- Installs system utilities.
- Installs PaperMC 1.21.4.
- Accepts the Minecraft EULA automatically.
- Creates the Minecraft server directory.
- Generates the server startup and maintenance scripts.
- Schedules hourly backups.
- Installs Crafty Controller and its Python dependencies.
- Installs the Playit.gg agent.
- Starts the Minecraft server and Crafty Controller.

The first provisioning takes several minutes because it downloads the required software.

<details>
<summary><strong>What gets installed?</strong></summary>

```text
~/minecraft-server/
├── server.jar
├── eula.txt
└── server.properties

~/minecraft-server-backups/

~/start.sh
~/keep-alive.sh
~/backup.sh

/var/opt/minecraft/crafty/
└── crafty-4/
    ├── .venv/
    └── app/
        └── config/
```

</details>

### 4. Authenticate Playit.gg

Playit.gg is installed automatically, but its agent must be linked to your account.

Run:

```bash
playit
```

Open the authentication URL displayed in the terminal, sign in and claim the agent.

Then create a **Minecraft Java tunnel** in your Playit.gg dashboard.

Use the local server endpoint:

```text
127.0.0.1:25565
```

Keep the agent running. To launch it in the background, stop the foreground process with `Ctrl+C` and run:

```bash
playit &
```

Do not launch multiple agents simultaneously.

### 5. Connect to your server

Open your [Playit.gg dashboard](https://playit.gg/account/), find the public address assigned to your tunnel and share it with your friends.

In Minecraft Java Edition:

```text
Multiplayer
    |
    +-- Add Server
            |
            +-- Enter your Playit address
```

<badge color="success">Ready to play</badge>

## Crafty Controller

<div align="center">

<img src="https://craftycontrol.com/assets/logo.png" width="160" alt="Crafty Controller logo"/>

**Manage your Minecraft server from a web interface.**

</div>

Crafty Controller is installed in the Codespace and exposed through port `8443`.

### Access the dashboard

1. Open the **Ports** tab in your Codespace.
2. Locate port `8443`.
3. Open the forwarded HTTPS address.
4. Sign in using the credentials configured for Crafty.

The initial HTTPS certificate may be self-signed, which can cause a browser security warning.

[Crafty Controller documentation](https://docs.craftycontrol.com/)

### Security configuration

The current Codespaces configuration exposes port `8443` with public visibility.

For a private administration panel, change the port visibility in `.devcontainer/devcontainer.json` to `private`.

**Important:** `config/default.json` contains a fixed initial administrator password in the repository. It must be replaced with a unique secret. Since the repository is public, treat the existing value as compromised. Change the credentials in Crafty after the first login as well.

## Server management

### Start the Minecraft server

The provisioning script creates:

```bash
~/start.sh
```

This generated script launches PaperMC with a 2 GB Java heap and G1 garbage collector optimisations.

After restarting a Codespace, start the server with:

```bash
~/start.sh &
```

The initial provisioning already starts the server. Do not run this command again while it is running.

### Start Crafty Controller

Crafty also needs to be restarted after a stopped Codespace:

```bash
sudo -u crafty bash -c \
'source /var/opt/minecraft/crafty/crafty-4/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py' &
```

### Start Playit.gg

```bash
playit &
```

The agent must already be claimed and configured in your Playit.gg account.

### Keep-alive script

The template includes:

```bash
~/keep-alive.sh
```

It writes a timestamp to `keep-alive.log` every ten minutes.

This is a lightweight logging process. It does **not** disable Codespaces inactivity shutdown or guarantee permanent hosting.

## Backup system

<div align="center">

<img src="https://api.iconify.design/game-icons:wooden-crate.svg?color=%23C69C53" width="58" height="58" alt="Backup crate icon"/>

**Automatic hourly world backups**

</div>

The backup script is:

```bash
scripts/backup.sh
```

It creates compressed archives containing the available world directories:

```text
world/
world_nether/
world_the_end/
```

The backup directory is:

```text
~/minecraft-server-backups/
```

Example archive:

```text
world-20261107-140000.tar.gz
```

Cron schedules the backup every hour:

```cron
0 * * * * /home/codespace/backup.sh
```

The current implementation does not automatically delete old archives. Backups remain inside the Codespace and are not an external storage solution.

**Export important world archives before deleting the Codespace.**

## Configuration

### Current server configuration

The template is currently configured around these values:

| Setting | Value |
|---|---|
| Minecraft version | 1.21.4 |
| Server software | PaperMC |
| Java runtime | 21 |
| Initial Java heap | 2 GB |
| Local Minecraft port | 25565 |
| Crafty Controller port | 8443 |
| Backup interval | 1 hour |
| Maximum players in helper configuration | 20 |

PaperMC is downloaded from the Paper API using the latest available build for the pinned Minecraft version.

### Optional configuration script

The repository includes:

```bash
scripts/setup-config.sh
```

It interactively generates `server.properties` and lets the user select:

- Server name / MOTD
- Peaceful, Easy, Normal or Hard difficulty

It currently writes `online-mode=false`.

**Do not use that setting on a public server unless you deliberately intend to run offline mode.** Offline mode does not provide normal Minecraft account authentication and allows username impersonation.

There is an implementation distinction: the setup script generates its own `~/start.sh`, which does not call `scripts/setup-config.sh`. The configuration helper is only invoked by the repository's `scripts/start.sh` when `server.properties` is missing.

### Minecraft EULA

The provisioning script creates:

```text
~/minecraft-server/eula.txt
```

with:

```properties
eula=true
```

Review the [Minecraft EULA](https://www.minecraft.net/eula) before running the server.

## Codespaces limitations

This template is intended for temporary cloud hosting and experimentation. It is not a permanent 24/7 hosting service.

GitHub Codespaces has usage quotas and automatic shutdown behaviour.

| Resource | GitHub Free personal account |
|---|---:|
| Included compute | 120 core-hours / month |
| Included storage | 15 GB-month |

A two-core machine consumes two core-hours per hour. That means 120 included core-hours provide approximately 60 hours on a two-core machine.

Codespaces normally stops after 30 minutes of inactivity by default. Users can change the timeout setting, but an individual Codespace has a maximum lifetime of 12 hours.

Sources: [GitHub Codespaces billing](https://docs.github.com/en/billing/concepts/product-billing/github-codespaces) · [Codespaces timeout settings](https://docs.github.com/en/codespaces/setting-your-user-preferences/setting-your-timeout-period-for-github-codespaces)

### World persistence

Stopping a Codespace preserves its files, but running processes stop.

Deleting the Codespace removes its local data. This includes:

- Minecraft world files
- Local backup archives
- Server logs
- Local Crafty data

Keep external copies of anything important.

## Repository structure

```text
mc-server-template/
│
├── .devcontainer/
│   ├── devcontainer.json
│   └── setup.sh
│
├── Docs/
│   ├── BR.TEMPLATE_GUIDE.md
│   ├── DE.TEMPLATE_GUIDE.md
│   ├── EN.TEMPLATE_GUIDE.md
│   ├── ES.TEMPLATE_GUIDE.md
│   ├── IT.TEMPLATE_GUIDE.md
│   ├── JA.TEMPLATE_GUIDE.md
│   └── RU.TEMPLATE_GUIDE.md
│
├── config/
│   └── default.json
│
├── scripts/
│   ├── backup.sh
│   ├── keep-alive.sh
│   ├── setup-config.sh
│   └── start.sh
│
├── Others README ᓚᘏᗢ.../
│   ├── BR.README.md
│   ├── DE.README.md
│   ├── ES.README.md
│   ├── IT.README.md
│   ├── JA.README.md
│   └── RU.README.md
│
├── LICENSE
└── README.md
```

## Documentation

Installation guides are available in several languages.

<div align="center">

[![English](https://img.shields.io/badge/English-Guide-356B45?style=flat)](Docs/EN.TEMPLATE_GUIDE.md)
[![Português](https://img.shields.io/badge/Português-Guia-356B45?style=flat)](Docs/BR.TEMPLATE_GUIDE.md)
[![Deutsch](https://img.shields.io/badge/Deutsch-Anleitung-356B45?style=flat)](Docs/DE.TEMPLATE_GUIDE.md)
[![Español](https://img.shields.io/badge/Español-Guía-356B45?style=flat)](Docs/ES.TEMPLATE_GUIDE.md)
[![Italiano](https://img.shields.io/badge/Italiano-Guida-356B45?style=flat)](Docs/IT.TEMPLATE_GUIDE.md)
[![日本語](https://img.shields.io/badge/日本語-ガイド-356B45?style=flat)](Docs/JA.TEMPLATE_GUIDE.md)
[![Русский](https://img.shields.io/badge/Русский-Руководство-356B45?style=flat)](Docs/RU.TEMPLATE_GUIDE.md)

</div>

## Contributing

Contributions, suggestions and bug reports are welcome.

1. Fork the repository.
2. Create a branch.
3. Make your changes.
4. Push the branch.
5. Open a Pull Request.

Example:

```bash
git checkout -b feature/my-feature
git add .
git commit -m "Improve server template"
git push origin feature/my-feature
```

## License

This project is distributed under the **MIT License**.

See [LICENSE](LICENSE) for details.

PaperMC, Crafty Controller, Playit.gg and GitHub Codespaces remain subject to their respective licenses and terms of service.

---

<div align="center">

<img src="https://api.iconify.design/game-icons:grass.svg?color=%238DBD74" width="42" height="42" alt="Grass icon"/>
<img src="https://api.iconify.design/game-icons:chest.svg?color=%23C69C53" width="42" height="42" alt="Chest icon"/>
<img src="https://api.iconify.design/game-icons:stone-block.svg?color=%23989B9D" width="42" height="42" alt="Stone icon"/>

### Made for the Minecraft community

[![GitHub](https://img.shields.io/badge/GitHub-RufusTheDwarf-181717?style=flat&logo=github&logoColor=white)](https://github.com/RufusTheDwarf)
[![Repository](https://img.shields.io/badge/Repository-mc--server--template-356B45?style=flat&logo=git&logoColor=white)](https://github.com/RufusTheDwarf/mc-server-template)
[![MIT](https://img.shields.io/badge/License-MIT-B7A56A?style=flat)](LICENSE)

<br>

[![Star](https://img.shields.io/badge/Star_this_repository-D6B64C?style=flat&logo=github&logoColor=181717)](https://github.com/RufusTheDwarf/mc-server-template/stargazers)
[![Issues](https://img.shields.io/badge/Report_an_issue-C96857?style=flat&logo=github&logoColor=white)](https://github.com/RufusTheDwarf/mc-server-template/issues)
[![Fork](https://img.shields.io/badge/Fork_this_project-6A9C72?style=flat&logo=github&logoColor=white)](https://github.com/RufusTheDwarf/mc-server-template/fork)

<br>

<sub>Designed and maintained by **RufusTheDwarf** · MIT License · © 2026</sub>

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:10231A,35:245B35,70:4E853D,100:A5B96A&height=120&section=footer" width="100%" alt="Green Minecraft footer"/>

</div>
