FROM node:16-alpine AS build2
WORKDIR /app
COPY package.json package.json
ARG test
RUN echo $test 
RUN yarn install
COPY . .
EXPOSE 8080
CMD [ "node", "index.js"]


FROM node:16-alpine AS build1
WORKDIR /app
COPY package.json package.json
RUN echo $test 
RUN yarn install
COPY . .
EXPOSE 8080
CMD [ "node", "index.js"]
