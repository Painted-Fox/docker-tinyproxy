# Tinyproxy (https://banu.com/tinyproxy/)

FROM ubuntu:trusty
MAINTAINER Ryan Seto <ryanseto@yak.net>

RUN     apt-get update && \
        apt-get -y upgrade && \
        apt-get -y install tinyproxy && \
        rm -rf /var/lib/apt/lists/*

# Ensure UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG       en_US.UTF-8
ENV LC_ALL     en_US.UTF-8

USER nobody
EXPOSE 8888
ENTRYPOINT ["/usr/sbin/tinyproxy", "-d"]
