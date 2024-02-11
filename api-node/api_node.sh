#!/bin/bash
DATABASE_URL=postgres://postgres:mysecretpassword@172.17.0.2:5432/postgres

echo "Installing dependencies"
sudo apt update && apt upgrade -y
sudo apt install nodejs \
    sudo apt install npm \
    npm install -g nodemon \
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

