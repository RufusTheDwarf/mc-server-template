# 🚀 クイックスタート - Minecraft Codespaces テンプレート

> ⚡ **すべて自動化されています。** Codespace が作成されたら、4つのコマンドを実行し、Playit.gg のアドレスを共有するだけです。

## 1. テンプレートを使用する

- このリポジトリ上部の緑色の **Use this template** ボタンをクリックします。
- **Create a new repository** を選び、名前を付けて作成します。
- 新しいリポジトリで、**Code** → **Create codespace on main** をクリックします。

## 2. 初回起動: しばらくお待ちください (5～7分)

Codespace が起動し、完全なインストールが自動的に行われます。
端末にログが流れます。**ウィンドウを閉じずに**、すべての準備が完了したという最終メッセージを待ってください。

> 💡 この待ち時間は**初回作成時のみ**発生します。それ以降のセッションでは、サーバーがすでに設定された状態で直接開くため、1分もかからずプレイを始められます。

## 3. Playit.gg を認証する (唯一の手動ステップ)

Codespace の端末で、以下を入力します:

    playit

リンクが表示されます。それをブラウザで開き、Playit.gg アカウントにログインして、**Claim Agent** をクリックします。

その後、エージェントをバックグラウンドで実行します:

    playit &

## 4. サーバーと Crafty を起動する

以下の4つのコマンドを端末にコピーアンドペーストします (順不同、素早く実行すれば問題ありません):

    nohup ~/keep-alive.sh &
    playit &
    ~/start.sh &
    sudo -u crafty bash -c "source /var/opt/minecraft/crafty/crafty-4/.venv/bin/activate && cd /var/opt/minecraft/crafty/crafty-4 && python3 main.py" &

## 5. フレンドを招待する

- Playit.gg ダッシュボードから公開アドレスを取得します (例: `myserver.playit.gg:12345`)
- Minecraft 内でフレンドにそのアドレスを伝えます (マルチプレイヤー → サーバー追加)
- 🎮 完了！

## 6. セッションを終了する

**タブを閉じるだけでは不十分です。**
まずサーバーを停止し (Crafty または `kill $(pgrep -f server.jar)` を使用)、次に [github.com/codespaces](https://github.com/codespaces) から Codespace を停止します。

---

## 📘 完全なガイド

各ツールとコマンドの詳しい説明は、完全なガイドをお読みください: [GUIDE.md](GUIDE.md)

*10分もかからず準備完了、まったくの初心者でも大丈夫です。*
