FROM openjdk:8-jre-alpine
ENV APP_FILE app.jar
ENV APP_ROOT /opt/app-root/bin
EXPOSE 8080
COPY target/*.jar $APP_ROOT/$APP_FILE
WORKDIR $APP_ROOT
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]