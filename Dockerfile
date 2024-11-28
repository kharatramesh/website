FROM ubuntu
LABEL "app"="php application"
RUN apt update -y
RUN apt install apache2 -y

COPY index.html /var/www/html
CMD ["apache2ctl","-D","FOREGROUND"]
