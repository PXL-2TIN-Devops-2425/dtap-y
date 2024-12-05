FROM node:23-slim
WORKDIR /app

ADD https://github.com/PXL-2TIN-Devops-2425/calculator-app-finished-y.git .

RUN npm install
RUN npm audit fix
RUN npm fund

EXPOSE 3000

CMD ["npm","start"]
