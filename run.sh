#ABOUT this bash script
#CHModed it like this: 	chmod +x run.sh
#execute it doing this: ./run.sh
#have phun!


#Not phun fact: this is running on "Alpine", which is a pain in the bumbum for me right now


#creates our temp directory and clones the required repositories to it, then renames them
#Dockerfile will expect the correct names to each one of the containers

rm temp -r
mkdir temp

git clone https://github.com/LucasFurioFranco/brobath_api.git ./temp/api
git clone https://github.com/LucasFurioFranco/brobath_www.git ./temp/www
git clone https://github.com/LucasFurioFranco/brobath_react.git ./temp/react
git clone https://github.com/LucasFurioFranco/brobath_db.git ./temp/db


#Stops the currently runing container, if there is one
echo "Running: docker stop brobath-docker"
docker stop brobath-docker

#Deletes the current "brobath-test" docker container
echo "Running: docker container rm brobath-docker"
docker container rm brobath-docker

#To build the docker image:
#NOTE: you must be in the Dockerfile directory with tour terminal
echo "Running: docker build -t brobath_docker ."
docker build -t brobath_docker .

#To run naming it and on background and making it possible to run docker inside:
echo "Running: docker run --privileged -p 5005:80 -d --name brobath-docker brobath_docker"
docker run --privileged -p 5005:80 -d --name brobath-docker brobath_docker

#Prints the status of the running containers after deploying this one!
echo "Running: docker ps"
docker ps

#For accessing the running container, run the following code:
#docker exec -it <container_id> /bin/sh
