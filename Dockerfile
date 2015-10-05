## -*- docker-image-name: "rhololkeolke/openresty" -*-

FROM ubuntu

RUN apt-get update && \
    apt-get install -y ca-certificates wget libreadline-dev libncurses5-dev libpcre3-dev libssl-dev perl make build-essential && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://openresty.org/download/ngx_openresty-1.9.3.1.tar.gz && \
    tar -xzf ngx_openresty-1.9.3.1.tar.gz && \ 
    cd ngx_openresty-1.9.3.1 && \
    ./configure && \
    make -j4 && \
    make install

# put the nginx files back in their default locations
RUN ln -s /usr/local/openresty/nginx/sbin/nginx /usr/sbin/nginx && \
    ln -s /usr/local/openresty/nginx/conf /etc/nginx && \
    mkdir -p /usr/share/nginx/ && \
    ln -s /usr/local/openresty/nginx/html /usr/share/nginx/html && \
    mkdir -p /var/log/nginx/

ENV NGINX_VERSION 1.9.3.1

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

VOLUME ["/var/cache/nginx"]

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
