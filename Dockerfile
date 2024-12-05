FROM node:22-slim
WORKDIR /calculator

COPY . /calculator/

EXPOSE 3000

CMD ["npm","start"]