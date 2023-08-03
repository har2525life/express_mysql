FROM node:16
# 使用したいイメージを指定

WORKDIR /app
# Docker内にappディレクトリを作成するということ
# このフォルダ構成は自由指定
# この後のコマンド操作に変更がある

COPY package*.json ./
# すでに存在しているカレントディレクトリにあるpackage.jsonやpackage-look.jsonをコピーする
# 末尾はコピーするファイルの階層を指定している

RUN npm install
# コピーしてきたpackage.jsonファイルのDocker内でインストールすることで、パッケージのバージョンコントロールしている

COPY . .
# Dockerfileがある場所のディレクトリとファイルをWORKDIRで指定した場所にコピーする

EXPOSE 8080


CMD [ "node", "app.js" ]
# ターミナルでnode app.jsでnodeを起動させるようにコンテナが起動した際にnodeを立ち上げてほしいために記述されている