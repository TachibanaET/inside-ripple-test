# inside-ripple-test
電気通信大学プログラミング教室内部Ripple+Docker環境テスト

## 環境インストール手順
1. このリポジトリをローカルにclone
1. `docker-compose build`を実行
    build成功する時のログはこんな感じ
    ```
    Step 9/9 : EXPOSE 80
    ---> Using cache
    ---> 745b693c704a
    Successfully built 745b693c704a
    Successfully tagged inside-ripple-test_app:latest
    ```
1. `docker-compose up -d`を実行
1. `localhost:8000/ripple/install`にアクセス
1. 初期PWを入力，インストール
1. 「管理者ページへ」をクリック
1. 先程入力したPWを使ってログイン

## メモ

rippleのURL: `localhost:8000/ripple`

phpMyadminのURL: `localhost:8080/`

データをimportする時phpMyadminを使うと便利かも
