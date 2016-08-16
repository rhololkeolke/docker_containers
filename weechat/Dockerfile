FROM ubuntu
RUN apt-get -y update && apt-get -y install weechat sudo

RUN adduser --disabled-password --gecos '' user && \
    adduser user sudo && \
    mkdir -p /home/user && \
    chown user:user /home/user && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

VOLUME /home/user/.weechat

# weechat relay port
EXPOSE 9000

USER user

CMD /usr/bin/weechat