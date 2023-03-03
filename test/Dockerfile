FROM node:16-alpine

WORKDIR /app

COPY package.json package.json

RUN echo $test 

RUN yarn install

COPY . .

EXPOSE 8080

CMD [ "node", "index.js"]
