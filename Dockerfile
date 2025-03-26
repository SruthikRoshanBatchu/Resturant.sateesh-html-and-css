FROM ubuntu:latest
WORKDIR /var/www/html
RUN apt update && apt install -y apache2

COPY . /var/www/html

EXPOSE 83

CMD ["apachectl", "-D", "FOREGROUND"]
