# 🚀 Guía rápida - Plantilla Minecraft para Codespaces

> ⚡ **Todo está automatizado.** Una vez creado el Codespace, solo tienes que ejecutar 4 comandos y compartir la dirección de Playit.gg.

## 1. Usar la plantilla

- Haz clic en el botón verde **Use this template** en la parte superior de este repositorio.
- Elige **Create a new repository**, dale un nombre y créalo.
- En tu nuevo repositorio, haz clic en **Code** → **Create codespace on main**.

## 2. Primer inicio: paciencia (5-7 minutos)

El Codespace arranca y ejecuta la instalación completa automáticamente.
Verás los registros en el terminal. **No cierres la ventana**; espera al mensaje final que indica que todo está listo.

> 💡 Esta demora solo ocurre en la **primera creación**. Las sesiones posteriores se abrirán directamente con el servidor ya configurado y estarás jugando en menos de un minuto.

## 3. Autenticar Playit.gg (el único paso manual)

En el terminal del Codespace, escribe:

    playit

Aparecerá un enlace. Ábrelo en tu navegador, inicia sesión en tu cuenta de Playit.gg y haz clic en **Claim Agent**.

Luego, ejecuta el agente en segundo plano:

    playit &

## 4. Iniciar el servidor y Crafty

Copia y pega estos 4 comandos en el terminal (el orden no importa si los ejecutas rápido):

    nohup ~/keep-alive.sh &
    playit &
    ~/start.sh &
    sudo -u crafty bash -c "source /var/opt/minecraft/crafty/crafty-4/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py" &

## 5. Invitar amigos

- Obtén la dirección pública desde el panel de Playit.gg (ej: `miservidor.playit.gg:12345`)
- Pásala a tus amigos en Minecraft (multijugador → añadir servidor)
- 🎮 ¡Listo!

## 6. Detener una sesión

**No te limites a cerrar la pestaña.**
Primero para el servidor (desde Crafty o con `kill $(pgrep -f server.jar)`) y luego detén el Codespace desde [github.com/codespaces](https://github.com/codespaces).

---

## 📘 Guía completa

Para una explicación detallada de cada herramienta y comando, lee la guía completa: [GUIDE.md](GUIDE.md)

*Listo en menos de 10 minutos, incluso para un principiante total.*
