# Dockerfile
FROM node:20-slim

WORKDIR /usr/src/app

# Actualizar npm a una versión sin el bug
RUN npm install -g npm@10.9.2

COPY package*.json ./

RUN npm install --no-audit --no-fund && ls -la node_modules/express

COPY index.js .

EXPOSE 3000

CMD ["node", "index.js"]