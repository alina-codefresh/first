FROM alpine

WORKDIR /app

RUN touch test.txt

COPY . .

CMD [ "ls", "/app" ]