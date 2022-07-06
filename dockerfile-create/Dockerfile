FROM ubi8/ubi:8.5

MAINTAINER Hello docker nexweb1@gmail.com

Label description="A custom apache container based on UBI 8"

ENV APP_ROOT=/scripts/ 
ENV APACHE_USER=apache

RUN yum install -y httpd && \
    yum clean all && \
    mkdir -p /scripts

COPY  ./scripts/app-run.sh /scripts/

RUN chown -R $APACHE_USER:$APACHE_USER /etc/httpd/logs/ && \
    chown -R $APACHE_USER:0 /run/httpd/ && \
    chgrp -R 0 /etc/httpd/logs/ && \
    chmod -R g=u $APP_ROOT && \
    chmod +x $APP_ROOT/app-run.sh && \ 
    echo "Hello from Containerfile 3" > /var/www/html/index.html

RUN sed -i "s/Listen 80/Listen 8080/g" /etc/httpd/conf/httpd.conf

EXPOSE 8080

USER $APACHE_USER

CMD ["/scripts/app-run.sh"]
      
