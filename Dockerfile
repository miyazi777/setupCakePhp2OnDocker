FROM centos:6

# add repository
RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm && \
    rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

# install httpd
RUN yum update && \
    yum install -y httpd

# install php
RUN yum update && \
    yum install -y php --enablerepo=remi-php55 php-mysql

# setup cakePHP environment
RUN mkdir /var/www/cakephp && \
    chown apache:apache -R /var/www/cakephp

COPY httpd.conf /etc/httpd/conf/.

# port
EXPOSE 80

VOLUME /var/www/cakephp

# start httpd
ENTRYPOINT ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
