#!/bin/bash

# Pull latest images
docker pull nginxproxy/nginx-proxy:latest
docker pull nginxproxy/acme-companion:latest

# Remove running nginx-proxy and acme-companion containers
docker rm -f letsencrypt > /dev/null 2>&1 || true
docker rm -f nginx-proxy > /dev/null 2>&1 || true

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Start nginx-proxy and acme-companion
docker run -d -p 80:80 -p 443:443 \
  --name nginx-proxy \
  --restart=always \
  -v $DIR/app/certs:/etc/nginx/certs:ro \
  -v $DIR/app/vhost.d:/etc/nginx/vhost.d \
  -v $DIR/app/html:/usr/share/nginx/html \
  -v $DIR/app/conf.d:/etc/nginx/conf.d \
  -v $DIR/app/log:/var/log/nginx/ \
  -v $DIR/assets/extra.conf:/etc/nginx/conf.d/extra.conf \
  -v /var/run/docker.sock:/tmp/docker.sock:ro \
  --label com.github.jrcs.letsencrypt_nginx_proxy_companion.nginx_proxy \
  nginxproxy/nginx-proxy

docker run -d \
  --name letsencrypt \
  --restart=always \
  -v $DIR/app/certs:/etc/nginx/certs:rw \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  --volumes-from nginx-proxy \
  nginxproxy/acme-companion

