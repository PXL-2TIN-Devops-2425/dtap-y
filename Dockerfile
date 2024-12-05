FROM node:23-bullseye-slim
WORKDIR /usr/src/app

ADD https://github.com/PXL-2TIN-Devops-2425/calculator-app-finished-y.git /usr/src/app/

RUN rm -rf /usr/src/app/tests /usr/src/app/Dockerfile /usr/src/app/.dockerignore /usr/src/app/.gitignore /usr/src/app/docker-compose.yml && npm install npm@latest -g && npm install && npm audit fix && npm fund

EXPOSE 3000

CMD ["npm","start"]
