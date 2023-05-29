#FROM nginx:latest
FROM docker:dind

#Parent directory
RUN mkdir -p /app
WORKDIR /app


#Data Base directory
#RUN mkdir -p /db
COPY ./temp/db ./db

#API directory
#RUN mkdir -p /api
COPY ./temp/api ./api


#WWW (bit pure) directory
#RUN mkdir -p /app/www
COPY ./temp/www ./www


#React directory
#RUN mkdir -p /app/react
COPY ./temp/react ./react


COPY internal_run.sh .

#RUN ./internal_run.sh

#EXPOSE 5000
#EXPOSE 5001
#EXPOSE 5002
#EXPOSE 5003
#EXPOSE 5004
EXPOSE 5005
