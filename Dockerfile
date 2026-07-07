# Dockerfile
FROM node:20

# Crear directorio de la aplicación
WORKDIR /usr/src/app

# Copiar archivos al contenedor
COPY package*.json ./

# Instalar dependencias
RUN npm install --no-audit --no-fund

# Copiar el resto del código
COPY index.js .

# Exponer el puerto de la aplicación
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "index.js"]