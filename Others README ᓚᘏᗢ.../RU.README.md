# 🟢 Шаблон сервера Minecraft для GitHub Codespaces

<div align="center">

![Minecraft](https://img.shields.io/badge/Minecraft-1.21.4+-00AA00?style=flat-square&logo=minecraft&logoColor=white)
![Java](https://img.shields.io/badge/Java-21_LTS-ED8B00?style=flat-square&logo=openjdk&logoColor=white)
![PaperMC](https://img.shields.io/badge/Сервер-PaperMC-0069C0?style=flat-square)
![Crafty](https://img.shields.io/badge/Панель-Crafty_Controller-F26522?style=flat-square)
![Playit.gg](https://img.shields.io/badge/Туннель-Playit.gg-7B2FBE?style=flat-square)
![Шаблон](https://img.shields.io/badge/Использовать_шаблон-готов-2ea44f?style=flat-square)

</div>

> **Один клик. Ноль настроек.**  
> Полноценный сервер Minecraft в облаке, бесплатный и готовый к работе менее чем за 10 минут.

---

## Что делает этот шаблон?

Этот репозиторий - **шаблон GitHub**, который автоматически разворачивает целый сервер Minecraft в Codespace. Вам не нужно вводить десятки команд: всё предустановлено и преднастроено.

- ☕ **Java 21** - устанавливается автоматически
- 🐍 **Python 3.11** - устанавливается автоматически
- 🧱 **PaperMC 1.21.4** - автоматически загружается (последняя стабильная сборка)
- 🎛️ **Crafty Controller** - веб-панель для управления сервером **(установлена и настроена)**
- 📡 **Агент Playit.gg** - установлен; только один ручной шаг для привязки вашего аккаунта
- ⏳ **Скрипт антисна** - готов к использованию
- 💾 **Автоматическое резервное копирование каждый час** - активно с самого начала
- 🚀 **Скрипт запуска** с Aikar's flags - уже ждёт вас

---

## Единственный ручной шаг

Playit.gg требует, чтобы человек один раз прошёл аутентификацию. Когда Codespace будет готов:

1. Выполните `playit`
2. Откройте появившуюся в терминале ссылку
3. Войдите и нажмите **Claim Agent**
4. Затем оставьте его работать в фоне командой `playit &`

Всё остальное уже сделано за вас.

---

## Как использовать

1. Нажмите зелёную кнопку **Use this template** → создайте свой репозиторий
2. В новом репозитории нажмите **Code** → **Create codespace on main**
3. Дождитесь завершения настройки (~5 минут)
4. Откройте терминал и запустите сервер:

    nohup ~/keep-alive.sh &
    playit &
    ~/start.sh &
    sudo -u crafty bash -c "source /var/opt/minecraft/crafty/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py" &

5. Передайте адрес Playit.gg своим друзьям 🎮

> 📘 Полное пошаговое руководство: смотрите `GUIDE.md` (доступно на нескольких языках).

---

## Включённые скрипты

| Скрипт | Назначение |
|---|---|
| `start.sh` | Запускает сервер с оптимизациями производительности |
| `keep-alive.sh` | Не даёт Codespace заснуть во время игры |
| `backup.sh` | Создаёт резервную копию вашего мира каждый час |

---

## Ограничение

Бесплатный тариф GitHub даёт **120 ядро-часов/месяц** → **60 реальных часов** на 2-ядерной машине. Не держите сервер включённым 24/7.

---

*Счастливого крафта!*
