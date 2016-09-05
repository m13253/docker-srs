[SRS](https://github.com/ossrs/srs) is industrial-strength live streaming cluster, for the best conceptual integrity and the simplest implementation.

To run SRS:
```
docker run -p 1935 -p 1985 -p 8080 m13253/srs
```
TCP port 1935 is an RTMP server, available for pushing & playing;
TCP port 1985 is an HTTP API server, used to control SRS;
TCP port 8080 is an HTTP server, available for playing.

The default [srs.conf](https://github.com/ossrs/srs/blob/2.0release/trunk/conf/srs.conf) will be used. If you want to customize your SRS application, feel free to base your Dockerfile on mine.
