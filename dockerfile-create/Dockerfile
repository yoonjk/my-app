FROM ubi8/ubi:8.5

MAINTAINER Hello docker nexweb1@gmail.com

Label description="A custom apache container based on UBI 8"

ENV APP_ROOT=/scripts/ \ 
    APACHE_USER=apache 
ENV APP_DIRS /etc/httpd/logs/ /run/httpd/

RUN yum install -y httpd && \
    yum clean all && \
    mkdir -p /scripts

COPY  ./scripts/app-run.sh /scripts/

RUN chown -R $APACHE_USER:$APACHE_USER $APP_DIRS && \
    chgrp -R 0 $APP_DIRS && \
    chmod -R g=u $APP_ROOT && \
    chmod +x $APP_ROOT/app-run.sh && \ 
    echo "Hello from Containerfile 3" > /var/www/html/index.html

RUN sed -i "s/Listen 80/Listen 8080/g" /etc/httpd/conf/httpd.conf

EXPOSE 8080

USER $APACHE_USER

CMD ["/scripts/app-run.sh"]
      
