# 🚀 Quick Start - Minecraft Codespaces Template

> ⚡ **Everything is automated.** Once the Codespace is created, just run 4 commands and share the Playit.gg address.

## 1. Use the template

- Click the green **Use this template** button at the top of this repository.
- Choose **Create a new repository**, give it a name, and create it.
- In your new repository, click **Code** → **Create codespace on main**.

## 2. First launch: be patient (5-7 minutes)

The Codespace starts and runs the complete installation automatically.
You will see logs scrolling in the terminal. **Do not close the window**; wait for the final message saying everything is ready.

> 💡 This delay only happens on the **very first creation**. Later sessions will open directly with the server already configured, and you will be playing in less than a minute.

## 3. Authenticate Playit.gg (the only manual step)

In the Codespace terminal, type:

    playit

A link appears. Open it in your browser, log in to your Playit.gg account, and click **Claim Agent**.

Then, run the agent in the background:

    playit &

## 4. Start the server and Crafty

Copy-paste these 4 commands in the terminal (order is not important if you launch them quickly):

    nohup ~/keep-alive.sh &
    playit &
    ~/start.sh &
    sudo -u crafty bash -c "source /var/opt/minecraft/crafty/crafty-4/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py" &

## 5. Invite friends

- Get the public address from the Playit.gg dashboard (e.g. `myserver.playit.gg:12345`)
- Give it to your friends in Minecraft (multiplayer menu → add server)
- 🎮 Done!

## 6. Stop a session

**Do not just close the tab.**
First stop the server (via Crafty or `kill $(pgrep -f server.jar)`), then stop the Codespace from [github.com/codespaces](https://github.com/codespaces).

---

## 📘 Full guide

For a detailed explanation of each tool and command, read the full guide: [GUIDE.md](GUIDE.md)

*Ready in less than 10 minutes, even for a complete beginner.*
