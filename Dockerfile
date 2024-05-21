# imagen base para la imagen
FROM node:18-alpine

WORKDIR /app

# ./ para indicar la carpeta de la aplicacion
COPY package.json package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]