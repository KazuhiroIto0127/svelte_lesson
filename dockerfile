# 使用するDockerイメージ
FROM node:20.3.0-alpine

# 作業ディレクトリの作成
WORKDIR /usr/src/app

RUN apk add git

# 必要なファイルをローカルからコピー
COPY package*.json ./

# パッケージのインストール
RUN npm install

# すべてのファイルをコピー
COPY . .

# ポートの公開
EXPOSE 8080

# 起動コマンド
CMD [ "npm", "run", "dev" ]
