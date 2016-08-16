FROM ubuntu

RUN apt-get update -y && apt-get install -y git

RUN git clone https://github.com/letsencrypt/letsencrypt /letsencrypt

RUN /letsencrypt/letsencrypt-auto || true

CMD /letsencrypt/letsencrypt-auto certonly -a webroot --webroot-path=${WEBROOT_PATH} -d ${DOMAIN}
