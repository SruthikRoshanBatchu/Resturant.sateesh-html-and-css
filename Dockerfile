FROM ubuntu:latest
WORKDIR /var/www/html
RUN apt update && apt upgrade -y
RUN apt install -y apache2
RUN apt install vim -y

COPY . /var/www/html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
