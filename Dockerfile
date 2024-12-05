FROM node:23-bullseye-slim

ADD https://github.com/PXL-2TIN-Devops-2425/calculator-app-finished-y.git .

RUN npm install npm@latest -g && npm install && npm audit fix && npm fund

EXPOSE 3000

CMD ["npm","start"]
