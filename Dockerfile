#FROM nginx:latest
FROM docker:dind

#Parent directory
RUN mkdir -p /app
WORKDIR /app
COPY ./temp/db ./db
COPY ./temp/api ./api
COPY ./temp/www ./www
COPY ./temp/react ./react


#Install auxiliaries (this %$#R$#!! is running on "Alpine Linux")
RUN apk update
RUN apk add nano
RUN apk add nginx

#Services manager
RUN apk add openrc --no-cache
RUN mkdir /run/openrc/softlevel -p
RUN touch /run/openrc/softlevel


EXPOSE 5000
EXPOSE 5001
EXPOSE 5002
EXPOSE 5003
EXPOSE 5004
EXPOSE 5005


COPY internal_run.sh .
#RUN ./internal_run.sh
