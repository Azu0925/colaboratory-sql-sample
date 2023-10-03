#!/bin/bash

# Install MySQL
sudo apt update > /dev/null
sudo apt -y --qq install mysql-server mysql-client > /dev/null
sudo serivce mysql start > /dev/null

# Set up root user
sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root'"

# Set up database
sudo mysql -u root -proot -e "source ./data/init_db.sql"

sudo pip -q install PyMySQL