#!/bin/bash 

#------ TMP ENV -----

export DATABASE_NAME=all_data 
export DATABASE_USER=alphaben
export DATABASE_PASS="2019@com" 
export DATABASE_PASS_ROOT="com#2019"

#----- END ENV ------
echo "---- START UP ------------------- "
mysql_install_db
 mysqld_safe &
 sleep 2
echo "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME ;" \
    "CREATE USER IF NOT EXISTS '$DATABASE_USER'@'%' IDENTIFIED BY '$DATABASE_PASS' ;" \
    "GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$DATABASE_USER'@'%' ;" \
    "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DATABASE_PASS_ROOT' ;" \
    "FLUSH PRIVILEGES;" | mariadb -u root -p"$DATABASE_PASS_ROOT"
        ps -a > /info 
    mariadb-admin -u root -p"$DATABASE_PASS_ROOT" shutdown 
echo "---- DONE :) ------------------- "
    mysqld_safe
bash 
