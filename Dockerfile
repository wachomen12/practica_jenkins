# Dockerfile
FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./

# Instalar dependencias sin caché (evita el bug "Exit handler never called")
RUN npm install --no-audit --no-fund --cache /tmp/.npm && ls node_modules/express

COPY index.js .

EXPOSE 3000

CMD ["node", "index.js"]