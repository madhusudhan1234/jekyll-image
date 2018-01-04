FROM ubuntu:16.04
MAINTAINER Madhu Sudhan Subedi <madhusudhansubedi4@gmail.com>
ENV REFERESHED_AT 2017-01-03

RUN apt-get -yqq update
RUN apt-get -yqq install ruby ruby-dev build-essential nodejs
RUN gem install jekyll -v 2.5.3

VOLUME /data
VOLUME /var/www/html
WORKDIR /data

ENTRYPOINT [ "jekyll", "build", "--destination=/var/www/html" ] 

