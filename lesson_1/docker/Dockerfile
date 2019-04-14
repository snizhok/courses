FROM ubuntu:latest

RUN apt update \
    && apt -y install nginx

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

WORKDIR /var/www
