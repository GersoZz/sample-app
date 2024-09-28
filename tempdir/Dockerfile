# Usa una imagen base de Node.js
FROM node:16-slim
# Establece el directorio de trabajo en el contenedor
WORKDIR /home/myapp
# Copia el archivo package.json y package-lock.json (si existe)
COPY package*.json ./
# Instala las dependencias de la aplicación
RUN npm install
# Copia los archivos de la aplicación
COPY  ./static /home/myapp/static/
COPY  ./templates /home/myapp/templates/
COPY  sample_app.js /home/myapp/
# Expone el puerto 5050 para el servidor web
EXPOSE 5050
# Comando para iniciar la aplicación
CMD ["node", "sample_app.js"]
