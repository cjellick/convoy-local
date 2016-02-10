FROM alpine:3.2

COPY run-convoy.sh /root/run-convoy.sh
RUN apk add --update openssl tar && rm -rf /var/cache/apk/* &&\
    wget https://github.com/rancher/convoy/releases/download/v0.4.3-longhorn-2/convoy.tar.gz &&\
    tar xvf convoy.tar.gz &&\
    cp convoy/convoy convoy/convoy-pdata_tools /usr/local/bin/
ENTRYPOINT /root/run-convoy.sh
