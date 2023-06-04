FROM ubuntu:latest
MAINTAINER vaibhav
RUN apt install -y apache2 \
 zip \
 unzip \
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/logistica.zip /var/www/html
WORKDIR /var/www/html
RUN unzip logistica.zip
RUN rm -rf logistica.zip
CMD ["usr/sbin/httpd" "-D" "FOREGROUND"]
EXPOSE 80
