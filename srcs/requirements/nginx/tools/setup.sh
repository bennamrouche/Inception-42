#!/bin/bash 
#---- TMP ENV ------------
export CERT_PATH="/etc/ssl/certs/nginx-selfsigned.crt"

DOMAIN_NAME='127.0.0.1'
#DOMAIN_NAME=ebennamr.42.fr
#---- END TMP ------------

openssl req -x509 -days 730 -newkey res:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key  -out $CERT_PATH \

   -subj "/C=MO/L=KHOURIBGA/O=incepcption/OU=Studnet/CN=ebennamr.42.fr"



echo "
server {
    listen 443 ssl;
    listen [::]:443 ssl;

    #server_name www.$DOMAIN_NAME $DOMAIN_NAME;

    ssl_certificate $CERT_PATH;
    ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;" > /etc/nginx/sites-available/default


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
