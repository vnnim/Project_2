FROM ubuntu
MAINTAINER vaibhav@gmail.com
CMD /bin/bash
RUN apt update -y
RUN apt install -y apache2 && apt install zip -y && apt install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/logistica.zip /var/www/html
WORKDIR /var/www/html
RUN unzip logistica.zip
RUN rm -rf logistica.zip
EXPOSE 80
