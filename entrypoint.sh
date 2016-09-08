#!/bin/sh

cd /opt/srs-2.0release/trunk/objs/hls-demo/html
caddy &
cd /opt/srs-2.0release/trunk
unbuffer ./objs/srs -c ./conf/hls-demo.conf &
wait
