#!/bin/bash

sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates


curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -

workingDirectory=$(pwd)

mkdir Books && cd Books && mkdir public && mkdir apps && cd apps && mkdir models && cd models

mv $workingDirectory/book.js $workingDirectory/Books/apps/models/book.js

mv $workingDirectory/server.js $workingDirectory/Books/server.js

mv $workingDirectory/routes.js $workingDirectory/Books/apps/routes.js

mv $workingDirectory/script.js $workingDirectory/Books/public/script.js

mv $workingDirectory/index.html $workingDirectory/Books/public/index.html

cd $workingDirectory/Books

sudo apt install nodejs

sudo apt install npm

sudo npm install body-parser

sudo npm install express mongoose

npm init

node server.js


