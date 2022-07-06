FROM ubi8/ubi:8.5

MAINTAINER Red Hat Training <nexweb1@gmail.com>

ENV PORT=8080 \
    DOCROOT=/var/www/html/

ENV APP_DIRS /etc/httpd/logs/  /run/httpd/

RUN yum --disablerepo=* --enablerepo="rhel-7-server-rpms" && \
    yum install -y httpd && \
    yum clean all

COPY ./src/  $DOCROOT

RUN chown -R apache:apache $APP_DIRS && \
    chgrp -R 0 $APP_DIRS && \
    sed -i "s/Listen 80/Listen 8080/g" /etc/httpd/conf/httpd.conf

EXPOSE $PORT

USER apache

CMD ["httpd", "-D", "FOREGROUND"]
