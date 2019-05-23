FROM node:8.9-alpine

RUN npm install -g laravel-echo-server
RUN mkdir -p /var/www
WORKDIR /var/www
COPY laravel-echo-server/laravel-echo-server.json .
CMD laravel-echo-server start
EXPOSE 6001
