#!/bin/bash
WKDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)

SITE=domain.com
NAME=$SITE-default

docker rm -f $NAME > /dev/null 2>&1 || true

docker run -d \
    --name $NAME \
    --restart=always \
    -v $WKDIR/html:/usr/share/nginx/html \
    -e TZ=Asia/Bangkok \
    -e VIRTUAL_HOST=$SITE \
    -e VIRTUAL_PATH=/ \
    -e LETSENCRYPT_HOST=$SITE \
    nginx
