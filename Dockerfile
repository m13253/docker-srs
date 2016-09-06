FROM m13253/srs:latest
MAINTAINER Star Brilliant <m13253@hotmail.com>

COPY srs.conf /opt/srs-2.0release/trunk/conf/hls-demo.conf
COPY index.html /opt/srs-2.0release/trunk/objs/hls-demo/html/index.html
ENTRYPOINT ["./objs/srs", "-c", "./conf/hls-demo.conf"]
