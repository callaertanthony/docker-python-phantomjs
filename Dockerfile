FROM python:2.7
MAINTAINER Anthony Callaert <callaertanthony@gmail.com>

# Env
ENV PHANTOMJS_VERSION 2.1.1

# Install phantomjs
RUN mkdir -p /srv/var && \
  wget -q --no-check-certificate -O /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
  tar -xjf /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 -C /tmp && \
  rm -f /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
  mv /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64/ /usr/local/share/phantomjs && \
  ln -s /usr/local/share/phantomjs/bin/phantomjs /usr/local/bin/phantomjs