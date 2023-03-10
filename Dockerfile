# 使用するベースイメージ
FROM node:18-alpine

# コンテナ内のアプリケーションを配置するディレクトリを作成
WORKDIR /app

# アプリケーション依存関係をインストール
COPY package*.json ./
RUN npm install --production

# アプリケーションファイルをコピー
COPY . .

# ポート番号のエクスポート
EXPOSE 3000

# アプリケーションの起動
CMD ["npm", "start"]