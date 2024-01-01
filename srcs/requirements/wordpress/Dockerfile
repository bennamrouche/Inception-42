FROM debian:bullseye

SHELL [ "/bin/bash" , "-c"]
RUN apt update -y 

RUN apt install php-fpm php-mysql -y
RUN  apt-get update -y && apt-get install mariadb-server -y
RUN apt install curl net-tools -y 
COPY tools/setup.sh /

CMD [ "bash", "/setup.sh"]