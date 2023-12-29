FROM debian:bullseye

RUN apt-get update -y && apt-get install mariadb-server -y

COPY    tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/setup.sh /
RUN  chmod a+   /setup.sh
CMD ["bash", "/setup.sh"]

