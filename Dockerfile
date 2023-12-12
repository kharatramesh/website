FROM registry.access.redhat.com/rhel7:7.9-1242
MAINTAINER "chetan@gmail.com"
LABEL "app"="php application"
RUN yum install yum-utils -y 
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-$(rpm -E '%{rhel}').noarch.rpm
RUN yum install -y http://rpms.remirepo.net/enterprise/remi-release-$(rpm -E '%{rhel}').rpm
RUN yum install httpd -y
COPY index.html /var/www/html
CMD ["httpd","-D","FOREGROUND"]
