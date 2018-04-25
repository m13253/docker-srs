FROM m13253/srs:latest
MAINTAINER Star Brilliant <m13253@hotmail.com>

RUN curl https://getcaddy.com | bash -s personal
COPY html /opt/srs-2.0release/trunk/objs/hls-demo/html
ADD https://github.com/Bilibili/flv.js/releases/download/v1.0.0/flv.min.js /opt/srs-2.0release/trunk/objs/hls-demo/html/flv@1.0.0.js
COPY srs.conf /opt/srs-2.0release/trunk/conf/flv-demo.conf
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
