# laravel-echo-server-docker

<p>i have created this image for real time  app for laravel , so you can't run this image alone without redis image.</p>

Repository of `hazemha/laravel-echo-server-docker` Docker image.   

## Features

- [x] Base from `node:8.9-alpine` image


## Usage
```
docker pull hazemha/laravel-echo-server-docker:latest
```
### Run laravel-echo-server

<h6> You can't run it alone <\h6>
  
```
  redis:
        image: redis:alpine
        volumes:
            - ./www:/var/www

    laravelechoserver:
        image: laravel-echo-server:latest
        volumes:
            - ./www:/var/www
            - ./laravel-echo-server/laravel-echo-server.json:/var/www/laravel-echo-server.json
        links:
            - redis
        depends_on: 
            - redis
````


### Run laravel-echo-server
inside your docker-compose.yml
```
links: 
            - redis
            - laravelechoserver
        depends_on: 
            - redis
            - laravelechoserver
```
