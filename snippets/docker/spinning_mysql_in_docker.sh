#!/bin/bash

# Creating a new docker container, called "mysql-server", running on port "3333" with mysql password "pass" for user "root"
docker run --name mysql-server -p 3333:3306 -e MYSQL_ROOT_PASS=pass mysql

# Acessing the docker container and running mysql
docker exec -it mysql-server
mysql -u root -ppass

# Exiting and Killing the docker container, when not in use
exit
docker kill mysql-server

# Deleting the container
docker rm mysql-server
