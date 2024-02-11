#!/bin/bash
DATABASE_URL=postgres://postgres:mysecretpassword@172.17.0.2:5432/postgres

echo "Installing dependencies"
sudo apt update && apt upgrade -y
curl -OL wget https://golang.org/dl/go1.17.linux-amd64.tar.gz

sha256sum go1.17.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.16.7.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile 
source ~/.profile
go version
go get -u github.com/gin-gonic/gin
go get -u github.com/jackc/pgx/v5
go mod download github.com/goccy/go-json

echo "Starting api-golang"

## test the dependencies well on a finish linux machine using the go version 22 and see if the issue with the net/netip doesnt occur again
## Running the api-node container

DATABASE_URL=${DATABASE_URL} go run main.go


### errors
###package net/netip is not in GOROOT (/usr/local/go/src/net/netip)

### Containerip = 172.17.0.2 (replace with your containerport)
### Find your container port , run : docker inspect <containerid or name>




