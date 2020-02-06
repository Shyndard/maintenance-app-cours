FROM node:13-alpine as webapp-builder

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./
RUN npm ci

COPY src src
COPY public public
COPY babel.config.js ./
COPY vue.config.js ./
RUN npm run build

FROM node:13-alpine

WORKDIR /app

RUN npm install -g http-server

COPY --from=webapp-builder /app/dist .

EXPOSE 3000
CMD [ "http-server", "-p 3000", "/app" ]