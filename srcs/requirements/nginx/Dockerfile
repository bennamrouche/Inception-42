FROM  debian:bullseye

RUN  apt -y update && apt install -y nginx openssl 

COPY   tools/setup.sh / 

CMD [ "setup.sh" ]
