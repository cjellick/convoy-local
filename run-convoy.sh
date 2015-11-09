#!/bin/sh

if [ -z "$CONVOY_SOCKET" ]; then
    echo CONVOY_SOCKET not set.
    exit 1
fi

if [ -z "$CONVOY_DATA_DIR" ]; then
    echo CONVOY_DATA_DIR not set.
    exit 1
fi

if [ -z "$CONVOY_DRIVER_NAME" ]; then
    echo CONVOY_DRIVER_NAME not set.
    exit 1
fi

nohup convoy --socket $CONVOY_SOCKET daemon --drivers vfs --driver-opts vfs.path=$CONVOY_DATA_DIR &
sleep 1
echo "unix://$CONVOY_SOCKET" > /etc/docker/plugins/$CONVOY_DRIVER_NAME.spec
tail -f nohup.out
