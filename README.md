# convoy-local

For testing convoy. Usage:

```
docker run --privileged -itd -e CONVOY_SOCKET=/var/run/convoytest.sock -e CONVOY_DATA_DIR=/tmp/convoytest -e CONVOY_DRIVER_NAME=convoytest -v /var/run/:/var/run/ -v /etc/docker/plugins/:/etc/docker/plugins -v /tmp/convoytest:/tmp/convoytest cjellick/convoy-local:v0.1.0
```
