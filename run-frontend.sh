#!/bin/bash
WKDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)

SITE=daveweb311203.xyz
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

# frontend
# ├── html
# │   ├── assets
# │   │   ├── default-B1OLlmkJ.css
# │   ├── favicon.ico
# │   └── index.html
# └── start.sh
