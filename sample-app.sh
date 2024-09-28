#!/bin/bash

# mkdir tempdir
# mkdir tempdir/templates
# mkdir tempdir/static

# cp sample_app.js tempdir/.
# cp package.json tempdir/.
# cp -r templates/* tempdir/templates/.
# cp -r static/* tempdir/static/.

# echo "# Usa una imagen base de Node.js" >> tempdir/Dockerfile
# echo "FROM node:16-slim" >> tempdir/Dockerfile
# echo "# Establece el directorio de trabajo en el contenedor" >> tempdir/Dockerfile
# echo "WORKDIR /home/myapp" >> tempdir/Dockerfile
# echo "# Copia el archivo package.json y package-lock.json (si existe)" >> tempdir/Dockerfile
# echo "COPY package*.json ./" >> tempdir/Dockerfile
# echo "# Instala las dependencias de la aplicación" >> tempdir/Dockerfile
# echo "RUN npm install" >> tempdir/Dockerfile
# echo "# Copia los archivos de la aplicación" >> tempdir/Dockerfile
# echo "COPY  ./static /home/myapp/static/" >> tempdir/Dockerfile
# echo "COPY  ./templates /home/myapp/templates/" >> tempdir/Dockerfile
# echo "COPY  sample_app.js /home/myapp/" >> tempdir/Dockerfile
# echo "# Expone el puerto 5050 para el servidor web" >> tempdir/Dockerfile
# echo "EXPOSE 5050" >> tempdir/Dockerfile
# echo "# Comando para iniciar la aplicación" >> tempdir/Dockerfile
# echo "CMD [\"node\", \"sample_app.js\"]" >> tempdir/Dockerfile

cd tempdir

docker build -t sampleapp .
docker run -t -d -p 5050:5050 --name samplerunning sampleapp
docker ps -a 
