#ABOUT this bash script
#CHModed it like this: 	chmod +x run.sh
#execute it doing this: ./run.sh
#have phun!


#Stops the currently runing container, if there is one
echo "Running: docker stop brobath-nginx"
docker stop brobath-nginx

#Deletes the current "brobath-test" docker container
echo "Running: docker container rm brobath-nginx"
docker container rm brobath-nginx

#To build the docker image:
#NOTE: you must be in the Dockerfile directory with tour terminal
echo "Running: docker build -t brobath_nginx ."
docker build -t brobath_nginx .

#To run naming it but not on backgrount (to see the life's console.logs)
#docker run --name brobath-nginx --publish 5005:80 brobath_nginx

#To run naming it and on background:
echo "Running: docker run --name brobath-nginx -d --publish 5002:5002 brobath_nginx"
docker run --name brobath-nginx -d --publish 5005:80 brobath_nginx

#Prints the status of the running containers after deploying this one!
echo "Running: docker ps"
docker ps

#For accessing the running container, run the following code:
#docker exec -it <container_id> /bin/bash
