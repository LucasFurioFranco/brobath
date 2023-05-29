#FROM nginx:latest
FROM docker:dind

#Parent directory
RUN mkdir -p /app

#Data Base directory
RUN mkdir -p /app/db


#API directory
RUN mkdir -p /app/api
#COPY . /app/
#COPY ./api/index.js /app/api/
#COPY ./api/Dockerfile /app/api/
#COPY ./api/run.sh /app/api/
#RUN /app/api/run.sh


#WWW (bit pure) directory
RUN mkdir -p /app/www


#React directory
RUN mkdir -p /app/react




COPY internal_run.sh /app

WORKDIR /app

#RUN ./internal_run.sh

EXPOSE 5005
