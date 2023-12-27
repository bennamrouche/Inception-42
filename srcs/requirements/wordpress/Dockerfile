FROM debian:bullseye

SHELL [ "/bin/bash" , "-c"]
RUN apt update -y 

RUN apt install php-fpm php-mysql -y
RUN apt install curl net-tools -y 
COPY tools/setup.sh /
COPY tools/wp-config.php /
RUN chmod 700 wp-config.php

CMD [ "bash", "/setup.sh"]