FROM ubuntu:12.04
MAINTAINER Star Brilliant <m13253@hotmail.com>

RUN apt-get -y update && \
    apt-get -y install curl sudo && \
    cd /opt && \
    curl -C - -L -s https://github.com/ossrs/srs/archive/2.0release.tar.gz | tar xzv && \
    cd srs-2.0release/trunk && \
    ./configure && \
    make && \
    rm -rf 3rdparty src doc research && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR ["/opt/srs-2.0release"]
EXPOSE 1935 1985 8080
ENTRYPOINT ["./objs/srs", "-c", "./conf/srs.conf"]
