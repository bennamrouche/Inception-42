#!/bin/bash 
#---- TMP ENV ------------
export CERT_PATH="/etc/ssl/certs/nginx-selfsigned.crt"
DOMAIN_NAME='localhost'

#DOMAIN_NAME=ebennamr.42.fr
#---- END TMP ------------
mkdir -p "/etc/nginx/ssl/"

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx-selfsigned.key -out nginx-selfsigned.crt -subj "/C=MO/L=KHOURIBGA/O=incepcption/OU=Student/CN=ebennamr.42.fr"

mv nginx-selfsigned.crt /etc/nginx/ssl/nginx-selfsigned.crt
mv  nginx-selfsigned.key /etc/nginx/ssl/nginx-selfsigned.key
echo "----------------------- done -----------------"
echo "
server {
    listen 443 ssl;
    listen [::]:443 ssl;

    #server_name www.$DOMAIN_NAME $DOMAIN_NAME;

    ssl_certificate /etc/nginx/ssl/nginx-selfsigned.crt;
    ssl_certificate_key /etc/nginx/ssl/nginx-selfsigned.key;" > /etc/nginx/sites-available/default


echo '
    ssl_protocols TLSv1.3;

    index index.php;
    root /var/www/html;

    location ~ [^/]\.php(/|$) { 
            try_files $uri =404;
            fastcgi_pass wordpress:9000;
            include fastcgi_params;
            fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        }
} ' >>  /etc/nginx/sites-available/default

nginx -g "daemon off;"
