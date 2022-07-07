FROM registry.access.redhat.com/ubi8/ubi:8.0

MAINTAINER Read Hat Training <nexweb1@gmail.com>

ENV DOCROOT=/var/www/html/

RUN yum install -y --nodocs --disableplugin=subscription-manager  httpd && \
    yum clean all --disableplugin=subscription-manager -y && \
    echo "Hello from the httpd httpd-parent container!" > ${DOCROOT}/index.html

# Allows child images to inject own content into 
ONBUILD COPY src/ ${DOCROOT}/

RUN rm -rf /run/httpd && mkdir /run/httpd

# Run as the root user
USER root

# Launch httpd
CMD /usr/sbin/httpd -D FOREGROUND
