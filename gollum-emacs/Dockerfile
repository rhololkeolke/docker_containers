FROM rhololkeolke/gollum
RUN apt-get update && apt-get install -y emacs emacs-goodies-el
ADD compile-org.sh /usr/bin/compile-org
ADD config.rb /config.rb
CMD ["gollum", "--port", "80","--allow-uploads", "dir","--mathjax","--user-icons","gravatar","--config", "/config.rb"]
