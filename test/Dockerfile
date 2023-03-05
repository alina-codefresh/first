FROM node:16-alpine AS build1
WORKDIR /app
COPY package.json package.json
ARG test
RUN echo $test 
RUN yarn install
COPY . .
EXPOSE 8080
CMD [ "node", "index.js"]


FROM node:16-alpine AS build2
WORKDIR /app
COPY package.json package.json
RUN echo $test 
RUN yarn install
COPY . .
EXPOSE 8080
CMD [ "node", "index.js"]

FROM alpine:latest  AS build3
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=builder /go/src/github.com/alexellis/href-counter/app ./
CMD ["./app"]
