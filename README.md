# [nginx-reverse] Simple reverse proxy using nginx

## How to use ?

Create the `docker-compose.yaml` file as in the example below and then use the `docker-compose up -d` command.

```yml

version: '3'
  
networks:
    nginx-proxy:
        name: nginx-proxy
        driver: bridge

services:

    proxy:
        image: likesistemas/nginx-reverse:latest
        environment:
            - BACKEND_SERVER=https\:\/\/linktr.ee\/nobisdesenvolvimento
            - VIRTUAL_HOST=nobisdesenvolvimento.com.br
            - LETSENCRYPT_HOST=nobisdesenvolvimento.com.br
        networks:
            - nginx-proxy

```
