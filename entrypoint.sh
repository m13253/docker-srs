#!/bin/sh

cd /opt/srs-2.0release/trunk/objs/hls-demo/html
caddy &
cd /opt/srs-2.0release/trunk
while true
do
    unbuffer ./objs/srs -c ./conf/hls-demo.conf
    sleep 1
done
