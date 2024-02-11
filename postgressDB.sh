#!/bin/bash

# Creating mount volume- PGDATA
docker volume create pgs-volume 

#Creating the docker container from  postgres:15.1-alpine official image
docker run -d \
	--name postgresDB \
	-e POSTGRES_PASSWORD=mysecretpassword \
	-e PGDATA=/var/lib/postgresql/data/pgdata \
	-v pgs-volume:/var/lib/postgresql/data \
	postgres:15.1-alpine


## Remember to give execute permission for this script to run: chmod u+x postgressDB.sh
## You can simply run the script by: ./postgressDB.sh
## To check if the container is up run: docker ps 
## To interactive gain access into the container to make any modifications, run command:docker exec -it postgressDB bash
## To check if the volume was mounted successful when you are in the container, run command: df -h and you see mount  /var/lib/postgresql/data