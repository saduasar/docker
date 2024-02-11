#!/bin/bash
DATABASE_URL=postgres://postgres:mysecretpassword@172.17.0.2:5432/postgres

echo "Installing the node 16.16.0"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm install 16.16.0
nvm use 16.16.0

echo "Installing dependencies(modules"
npm install

echo "Starting react client"

DATABASE_URL=${DATABASE_URL} npm run dev
