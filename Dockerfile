FROM registry.access.redhat.com/rhel7:7.9-1242
MAINTAINER "chetan@gmail.com"
LABEL "app"="php application"
RUN yum install httpd -y
COPY index.html /var/www/html
CMD ["httpd","-D","FOREGROUND"]
