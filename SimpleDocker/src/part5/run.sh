#!/bin/bash

docker build -t zenaluth:tag . -f ./Dockerfile
docker run -d -p 80:81 -v "`pwd`/nginx":/etc/nginx zenaluth:tag

dockle -ak NGINX_GPGKEY zenaluth:tag
