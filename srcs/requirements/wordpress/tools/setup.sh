#!/bin/bash 

#----- tmp ENV -----------
export TITLE="mysite"
export ADMIN_USER="alphaben"
export ADMIN_USER_PASS="wp2019com"
export ADMIN_EMAIL="bennamrouche@gmail.com" 
export DOMAIN_NAME=ebennamr.42.fr
export NEW_USER="mosa" 
export NEW_USER_PASS="12mosa3" 
export NEW_USER_EMAIL="mosa@gmai.com" 
export DATABASE_NAME=all_data 
export DATABASE_USER=alphaben
export DATABASE_PASS="2019@com"
export DATABASE_PASS_ROOT="com#2019"

#----- end Tmp info ------
# https://developer.wordpress.org/cli/commands/core/
sleep 15

mkdir -p  /var/www/html
cd  /var/www/html
rm -rf *
curl  -s https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar > /bin/wp 
chmod 100  /bin/wp 

wp core download --allow-root  
mv wp-config-sample.php  wp-config.php

#wp config create --dbname=$DATABASE_NAME --dbuser=$DATABASE_USER  --dbpass=$DATABASE_PASS --locale=en_US

wp config set DB_NAME $DATABASE_NAME --allow-root  
wp config set DB_USER $DATABASE_USER --allow-root  
wp config set DB_PASSWORD $DATABASE_PASS --allow-root  
wp config set DB_HOST mariadb  --allow-root   
wp config set DB_CHARSET utf8 --allow-root  
wp config set DB_COLLATE '' --allow-root  


wp core install --url=$DOMAIN_NAME/ --title=$TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_USER_PASS --admin_email=$ADMIN_EMAIL --skip-email --allow-root
wp user create $NEW_USER $NEW_USER_EMAIL --role=author --user_pass=$NEW_USER_PASS --allow-root
wp theme install faced --activate --allow-root


sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf

mkdir -p  /run/php
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

/usr/sbin/php-fpm7.4 -F 