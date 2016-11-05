FROM m13253/srs:latest
MAINTAINER Star Brilliant <m13253@hotmail.com>

RUN cd /usr/local/bin && curl -L 'https://caddyserver.com/download/build?os=linux&arch=amd64' | tar xz caddy
COPY html /opt/srs-2.0release/trunk/objs/hls-demo/html
COPY srs.conf /opt/srs-2.0release/trunk/conf/flv-demo.conf
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
