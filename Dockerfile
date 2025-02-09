FROM node:16

WORKDIR /app

COPY package.json pnpm-lock.yaml ./

RUN npm install pnpm -g && pnpm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
