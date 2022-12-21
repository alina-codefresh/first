FROM python:3.7-alphine

WORKDIR /app

RUN touch test.txt

COPY . .git

CMD [ "ls", "/app" ]
