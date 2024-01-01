FROM debian:bullseye

SHELL [ "/bin/bash" , "-c"]
RUN apt update -y 

RUN apt install php-fpm php-mysql -y

RUN  apt-get update -y && apt-get install mariadb-server -y

RUN apt install curl net-tools -y 

COPY tools/setup.sh /

COPY  conf/wp-config.php  wp-config.php

RUN  apt-get clean 
RUN rm -rf /var/lib/apt/lists/*

CMD [ "bash", "/setup.sh"]