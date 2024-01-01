FROM debian:bullseye

RUN apt-get update -y && apt-get install mariadb-server -y

COPY    conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/setup.sh /

RUN  chmod a+   /setup.sh
RUN  apt-get clean 
RUN rm -rf /var/lib/apt/lists/*

CMD ["bash", "/setup.sh"]

