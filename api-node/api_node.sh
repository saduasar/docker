#!/bin/bash


# Creating DATABASE_URL with the retrieved container IP
DATABASE_URL="postgres://postgres:mysecretpassword@postgresDB:5432/postgres"
#DATABASE_URL: This is an environment variable used to store the connection URL or string for accessing a database.
#"postgres://postgres:mysecretpassword@postgresDB/postgres": This is the actual connection URL, which consists of several components:
#postgres://: This is the protocol or scheme used to access the database. In this case, it's PostgreSQL's default protocol.
#postgres: This is the username used to authenticate with the database server.
#mysecretpassword: This is the password used to authenticate with the database server.
#@postgresDB: Name of the database container  
#/postgres: This is the name of the database to connect to.

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




