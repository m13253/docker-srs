FROM m13253/srs:latest
MAINTAINER Star Brilliant <m13253@hotmail.com>

RUN curl https://getcaddy.com | bash -s personal
COPY html /opt/srs-2.0release/trunk/objs/hls-demo/html
COPY srs.conf /opt/srs-2.0release/trunk/conf/hls-demo.conf
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
