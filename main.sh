#!/bin/bash

#this is the entry point of the program

#the various sub modules are made executable using chmod
echo "granting executable permissions to the sub-modules "update.sh, apache2.sh,mysql.sh and php.sh"....."
chmod +x ./update.sh ./mongodb.sh ./nodejs.sh


#the various sub-modules are called up
./update.sh
./mongodb.sh
./nodejs.sh



echo "LAMP webserver is up and running......"