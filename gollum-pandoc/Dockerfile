FROM rhololkeolke/gollum
ADD pandoc-1.15.0.6-1-amd64.deb /pandoc-amd64.deb
RUN dpkg -i /pandoc-amd64.deb || apt-get install -fy && rm /pandoc-amd64.deb
ADD config.rb /config.rb
CMD CMD ["gollum", "--port", "80","--allow-uploads", "dir","--mathjax","--user-icons","gravatar","--config", "/config.rb"]
