#!/bin/bash
sudo apt-get install -y mysql-server
mysql_secure_installation

# create test user and test database
# CREATE USER 'test'@'localhost' IDENTIFIED BY 'password';
# GRANT ALL PRIVILEGES ON *.* TO 'test'@'localhost' WITH GRANT OPTION;
# CREATE DATABASE test;