FROM node:18.20.7-alpine3.21

WORKDIR /app

COPY package.json yarn.lock /app

RUN yarn 

COPY . /app

CMD ["node", "index.js"]