FROM node:14-slim

ENV APP_ROOT /opt/app-root

COPY . ${APP_ROOT}

WORKDIR ${APP_ROOT}

RUN npm install

EXPOSE 8080

CMD ["node", "app.js"]
