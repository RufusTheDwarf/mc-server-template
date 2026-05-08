# 🟢 GitHub Codespaces 用 Minecraft サーバーテンプレート

<div align="center">

![Minecraft](https://img.shields.io/badge/Minecraft-1.21.4+-00AA00?style=flat-square&logo=minecraft&logoColor=white)
![Java](https://img.shields.io/badge/Java-21_LTS-ED8B00?style=flat-square&logo=openjdk&logoColor=white)
![PaperMC](https://img.shields.io/badge/サーバー-PaperMC-0069C0?style=flat-square)
![Crafty](https://img.shields.io/badge/パネル-Crafty_Controller-F26522?style=flat-square)
![Playit.gg](https://img.shields.io/badge/トンネル-Playit.gg-7B2FBE?style=flat-square)
![テンプレート](https://img.shields.io/badge/テンプレートとして使用-準備完了-2ea44f?style=flat-square)

</div>

> **ワンクリック。設定不要。**  
> クラウド上に完全な Minecraft サーバーを無料で、10 分以内に稼働。

---

## このテンプレートの機能

このリポジトリは **GitHub テンプレート** として、Codespace 内に自動的に完全な Minecraft サーバーをセットアップします。多数のコマンドを入力する必要なし：すべてがプリインストール・プリ設定済みです。

- ☕ **Java 21** - 自動インストール
- 🐍 **Python 3.11** - 自動インストール
- 🧱 **PaperMC 1.21.4** - 自動ダウンロード（最新安定ビルド）
- 🎛️ **Crafty Controller** - サーバー管理用 Web パネル **(インストール・設定済み)**
- 📡 **Playit.gg エージェント** - インストール済み；アカウント連携のための手動ステップが 1 回だけ
- ⏳ **スリープ防止スクリプト** - すぐに使用可能
- 💾 **毎時間の自動バックアップ** - 最初から有効
- 🚀 **Aikar's flags 付き起動スクリプト** - すでに準備完了

---

## 唯一の手動ステップ

Playit.gg は初回に人間による認証が必要です。Codespace の準備ができたら：

1. `playit` を実行
2. ターミナルに表示されたリンクを開く
3. ログインして **Claim Agent** をクリック
4. その後、`playit &` でバックグラウンド実行

他はすべて自動で完了しています。

---

## 使い方

1. 緑色の **Use this template** ボタンをクリック → 自分のリポジトリを作成
2. 新しいリポジトリで **Code** → **Create codespace on main** をクリック
3. セットアップ完了まで待つ（約 5 分）
4. ターミナルを開き、サーバーを起動：

    nohup ~/keep-alive.sh &
    playit &
    ~/start.sh &
    sudo -u crafty bash -c "source /var/opt/minecraft/crafty/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py" &

5. Playit.gg のアドレスを友達に教える 🎮

> 📘 詳細なステップバイステップガイド：複数言語の `GUIDE.md` を参照。

---

## 含まれるスクリプト

| スクリプト | 目的 |
|---|---|
| `start.sh` | パフォーマンス最適化付きでサーバーを起動 |
| `keep-alive.sh` | ゲームプレイ中の Codespace のスリープを防止 |
| `backup.sh` | 1 時間ごとにワールドをバックアップ |

---

## 制限事項

GitHub 無料枠では **120 コア時間/月** → 2 コアマシンで **60 実時間**。サーバーを 24 時間稼働させないでください。

---

*楽しいクラフトを！*
