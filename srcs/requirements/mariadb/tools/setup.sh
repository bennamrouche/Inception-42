#!/bin/bash 
mysql_install_db
 mysqld_safe &
 sleep 2
echo "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME ;" \
    "CREATE USER IF NOT EXISTS '$DATABASE_USER'@'%' IDENTIFIED BY '$DATABASE_PASS' ;" \
    "GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$DATABASE_USER'@'%' ;" \
    "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DATABASE_PASS_ROOT' ;" \
    "FLUSH PRIVILEGES;" | mariadb -u root -p"$DATABASE_PASS_ROOT"

mariadb-admin -u root -p"$DATABASE_PASS_ROOT" shutdown 

mysqld_safe

