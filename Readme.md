[SRS](https://github.com/ossrs/srs) is industrial-strength live streaming cluster, for the best conceptual integrity and the simplest implementation.

To run SRS:
```
docker run -p 1935:1935 -p 1985:1985 -p 8080:8080 m13253/srs
```
TCP port 1935 is an RTMP server, available for pushing & playing;
TCP port 8080 is an HTTP server, available for playing.

This branch is a demo application for HLS streaming.

Push your stream to:
```
URL: rtmp://localhost:1935/live
Stream key: livestream
```
Then visit http://localhost:8080/ to watch the livestream.

If you want to customize your SRS application, feel free to base your Dockerfile on mine.
