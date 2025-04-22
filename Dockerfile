# ベースイメージに Ubuntu 24.04 を指定
FROM ubuntu:24.04

# 環境変数を非対話に設定（tzdataなどのインストール時に必要）
ENV DEBIAN_FRONTEND=noninteractive

# パッケージの更新と nginx のインストール
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# ポート80を公開
EXPOSE 80

# デフォルトの起動コマンド（フォアグラウンド実行）
CMD ["nginx", "-g", "daemon off;"]
