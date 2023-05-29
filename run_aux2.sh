#ABOUT this bash script
#CHModed it like this: 	chmod +x run.sh
#execute it doing this: ./run.sh
#have phun!


#Stops the currently runing container, if there is one
echo "Running: docker stop brobath-docker"
docker stop brobath-docker

#Deletes the current "brobath-test" docker container
echo "Running: docker container rm brobath-nginx"
docker container rm brobath-docker

#To build the docker image:
#NOTE: you must be in the Dockerfile directory with tour terminal
echo "Running: docker build -t brobath_docker ."
docker build -t brobath_docker .

#Start Docker container in interactive mode mounting the docker.sock as volume. We will use the official docker image
echo "Running: sudo docker run --name brobath-docker -v /var/run/docker.sock:/var/run/docker.sock -ti brobath_docker"
docker run -v /var/run/docker.sock:/var/run/docker.sock --name brobath-docker -ti brobath_docker --privileged true

#To run naming it and on background and making it possible to run docker inside:
#echo "Running: docker run --name brobath-nginx -d --publish 5005:80 -v /var/run/docker.sock:/var/run/docker.sock brobath_nginx"
#docker run --name brobath-nginx -d --publish 5005:80 -v /var/run/docker.sock:/var/run/docker.sock brobath_nginx

#Prints the status of the running containers after deploying this one!
#echo "Running: docker ps"
#docker ps

#For accessing the running container, run the following code:
#docker exec -it <container_id> /bin/bash
