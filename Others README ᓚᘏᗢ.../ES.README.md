# 🟢 Plantilla de Servidor Minecraft para GitHub Codespaces

<div align="center">

![Minecraft](https://img.shields.io/badge/Minecraft-1.21.4+-00AA00?style=flat-square&logo=minecraft&logoColor=white)
![Java](https://img.shields.io/badge/Java-21_LTS-ED8B00?style=flat-square&logo=openjdk&logoColor=white)
![PaperMC](https://img.shields.io/badge/Servidor-PaperMC-0069C0?style=flat-square)
![Crafty](https://img.shields.io/badge/Panel-Crafty_Controller-F26522?style=flat-square)
![Playit.gg](https://img.shields.io/badge/Túnel-Playit.gg-7B2FBE?style=flat-square)
![Plantilla](https://img.shields.io/badge/Usar_como_plantilla-listo-2ea44f?style=flat-square)

</div>

> **Un clic. Cero configuración.**  
> Un servidor Minecraft completo, listo para usar en la nube, gratuito y en marcha en menos de 10 minutos.

---

## ¿Qué hace esta plantilla?

Este repositorio es una **Plantilla de GitHub** que configura automáticamente un servidor Minecraft entero en un Codespace. Sin teclear decenas de comandos: todo viene preinstalado y preconfigurado.

- ☕ **Java 21** - instalado automáticamente
- 🐍 **Python 3.11** - instalado automáticamente
- 🧱 **PaperMC 1.21.4** - descargado (última versión estable)
- 🎛️ **Crafty Controller** - panel web para gestionar el servidor **(instalado y configurado)**
- 📡 **Agente Playit.gg** - instalado; solo un paso manual para vincular tu cuenta
- ⏳ **Script anti-suspensión** - listo para usar
- 💾 **Copias de seguridad automáticas cada hora** - activas desde el inicio
- 🚀 **Script de arranque** con Aikar's flags - ya preparado

---

## El único paso manual

Playit.gg necesita que un humano autentique la primera vez. Cuando el Codespace esté listo:

1. Ejecuta `playit`
2. Abre el enlace que aparece en la terminal
3. Inicia sesión y haz clic en **Claim Agent**
4. Déjalo funcionando en segundo plano con `playit &`

El resto ya está hecho.

---

## Cómo usarlo

1. Haz clic en el botón verde **Use this template** → crea tu propio repositorio
2. En tu nuevo repo, clic en **Code** → **Create codespace on main**
3. Espera a que termine la configuración (~5 minutos)
4. Abre el terminal y lanza el servidor:

    nohup ~/keep-alive.sh &
    playit &
    ~/start.sh &
    sudo -u crafty bash -c "source /var/opt/minecraft/crafty/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py" &

5. Pasa la dirección de Playit.gg a tus amigos 🎮

> 📘 Guía completa paso a paso: consulta `GUIDE.md` (disponible en varios idiomas).

---

## Scripts incluidos

| Script | Función |
|---|---|
| `start.sh` | Inicia el servidor con optimizaciones de rendimiento |
| `keep-alive.sh` | Evita que el Codespace se suspenda durante el juego |
| `backup.sh` | Copia de seguridad del mundo cada hora |

---

## Limitación

El plan gratuito de GitHub ofrece **120 core-hours/mes** → **60 horas reales** en la máquina de 2 núcleos. No ejecutes el servidor 24/7.

---

*¡Feliz construcción!*
