FROM ubuntu:16.04

RUN apt-get update && apt-get -y --no-install-recommends install \
    ca-certificates \
    curl \
    gosu \
    sudo

RUN apt-get -y install weechat

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY sudoers /etc/sudoers

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD /usr/bin/weechat
