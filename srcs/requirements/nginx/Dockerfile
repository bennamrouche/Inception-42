FROM  debian:bullseye

RUN  apt -y update && apt install -y nginx openssl 

COPY   tools/setup.sh / 

RUN  apt-get clean 
RUN rm -rf /var/lib/apt/lists/*

CMD [ "bash", "setup.sh" ]
