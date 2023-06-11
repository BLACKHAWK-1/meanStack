#!/bin/bash

sudo apt-get install gnupg

curl -fsSL https://pgp.mongodb.com/server-6.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-6.0.gpg \
   --dearmor
   

echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list


sudo apt-get update

echo "Installing Mongodb...."
if (sudo apt-get install mongodb-org)
then
    echo "Mongodb successfully installed"
else 
    echo "looks like Mongodb is already installed or there's an error installing."  
fi

sudo systemctl daemon-reload

sudo systemctl start mongod





 