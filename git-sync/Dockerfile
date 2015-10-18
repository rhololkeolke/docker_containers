FROM ubuntu
RUN apt-get -y update && apt-get -y install git inotify-tools ssh
VOLUME /repo
VOLUME /root/.ssh
ADD start.sh /
RUN chmod +x /start.sh
CMD ["/start.sh"]
