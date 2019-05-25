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
##### You can't run it alone 
  
  
```
  redis:
        image: redis:alpine

    laravelechoserver:
        image: hazemha/laravel-echo-server-docker:latest
        ports:
            - 6001:6001
        volumes:
            - ./laravel-echo-server/laravel-echo-server.json:/var/www/laravel-echo-server.json
        links:
            - redis
        depends_on: 
            - redis
```

#### Run laravel-echo-server
inside your docker-compose.yml
```
links: 
            - redis
            - laravelechoserver
        depends_on: 
            - redis
            - laravelechoserver
```
