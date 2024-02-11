#!/bin/bash

# Define the DATABASE_URL environment variable with the database connection information
DATABASE_URL=postgres://postgres:mysecretpassword@172.17.0.2:5432/postgres

# Inform the user about the start of the installation process
echo "Installing dependencies"

# Update and upgrade system packages
sudo apt update && sudo apt upgrade -y

# Navigate to the /tmp directory
cd /tmp

# Download the Go programming language archive
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz

# Remove existing Go installation and extract the downloaded archive
sudo rm -rf /usr/local/go && sudo tar -xzf go1.22.0.linux-amd64.tar.gz -C /usr/local

# Add the Go binary directory to the system PATH
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile
source ~/.profile

# Verify the Go installation by checking the installed version
go version

# Install Gin web framework and pgx PostgreSQL driver for Go
go get -u github.com/gin-gonic/gin
go get -u github.com/jackc/pgx/v5

# Download additional dependencies specified in the go.mod file
go mod download github.com/goccy/go-json

# Inform the user about starting the API server
echo "Starting api-golang"

# Set the DATABASE_URL environment variable and run the Go program
DATABASE_URL=${DATABASE_URL} go run main.go



### errors
###package net/netip is not in GOROOT (/usr/local/go/src/net/netip)

### Containerip = 172.17.0.2 (replace with your containerport)
### Find your container port , run : docker inspect <containerid or name>




