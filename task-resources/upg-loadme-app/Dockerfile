
FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN npm install

EXPOSE 8081

COPY . .

CMD [ "node", "server.js" ]