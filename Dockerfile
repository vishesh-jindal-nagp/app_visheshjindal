FROM node:16.16.0-bullseye-slim

ENV PORT=3011

WORKDIR /app

RUN apt-get update

COPY ./package.json .

RUN npm install

COPY . .

EXPOSE 3011

CMD ["npm", "start"]
