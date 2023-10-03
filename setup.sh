#!/bin/bash

# Install MySQL
apt update > /dev/null
apt -y -qq install mysql-server mysql-client > /dev/null
service mysql start > /dev/null

# Set up root user
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root'"

# Set up database
mysql -u root -proot -e "source /content/colaboratory-sql-sample/data/init.sql"

pip -q install PyMySQL