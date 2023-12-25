#!/bin/bash 

#------ TMP ENV -----

export DATABASE_NAME=all_data 
export DATABASE_USER=alphaben
export DATABASE_PASS="2019@com" 
export DATABASE_PASS_ROOT="com#2019"

#----- END ENV ------
service mariadb start 

echo "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME ;" \
    "CREATE USER IF NOT EXISTS '$DATABASE_USER'@'%' IDENTIFIED BY '$DATABASE_PASS' ;" \
    "GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$DATABASE_USER'@'%' ;" \
    "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DATABASE_PASS_ROOT' ;" \
    "FLUSH PRIVILEGES;" | mariadb
kill $(cat /var/run/mysqld/mysqld.pid)

mysqld 
