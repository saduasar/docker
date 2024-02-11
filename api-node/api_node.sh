#!/bin/bash

# Fetching IP address of container with name "postgresDB"
container_ip=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' postgresDB)

# Creating DATABASE_URL with the retrieved container IP
DATABASE_URL="postgres://postgres:mysecretpassword@${container_ip}:5432/postgres"


#!/bin/bash

echo "Installing dependencies"

# Update and upgrade system packages
sudo apt update && sudo apt upgrade -y

# Install Node.js and npm
sudo apt install nodejs npm -y

# Install global npm packages
sudo npm install -g nodemon

# Install npm package locally
npm install pg



echo "Starting api-node"

## Running the api-node container

DATABASE_URL=${DATABASE_URL} npm run dev



### Containerip = 172.17.0.2 (replace with your containerport)
### Find your container port , run : docker inspect <containerid or name>


### Install nodejs on host machine(ubuntu)
### sudo apt update && apt uggrade
## sudo apt install nodejs
##  Check that the install was successful by querying node for its version number: node -v
## sudo apt install npm

## Install nodemon 
##Install nodemon globally
## npm install -g nodemon
## install nodemon locally
### npm install nodemon --save-dev

### install pg module for nodejs
### npm install pg

