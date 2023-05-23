FROM nginx:latest

RUN mkdir -p /app

WORKDIR /app

COPY internal_run.sh /app

RUN ./internal_run.sh

EXPOSE 5005
