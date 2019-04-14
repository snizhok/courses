FROM ubuntu:latest

RUN apt-get update \
    && apt-get install nginx

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

WORKDIR /var/www
