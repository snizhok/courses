#!/usr/bin/env bash

docker build -t lesson1/nginx .
docker run -d --name lesson1_nginx -p 8080:80 -p 8043:443 lesson1/nginx