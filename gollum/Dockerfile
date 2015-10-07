FROM ruby
RUN apt-get -y update && apt-get -y install libicu-dev
RUN gem install gollum
RUN gem install redcarpet org-ruby github-markdown
VOLUME /wiki
WORKDIR /wiki
CMD ["gollum", "--port", "80","--allow-uploads", "dir","--mathjax","--user-icons","gravatar"]
EXPOSE 80
