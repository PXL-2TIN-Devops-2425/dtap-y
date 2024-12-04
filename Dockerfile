FROM node:14
WORKDIR ./calculator

ADD https://github.com/PXL-2TIN-DevOps-Resources/calculator-app-finished.git .

RUN npm install
RUN npm audit fix
RUN npm fund

EXPOSE 3000

CMD ["npm","start"]