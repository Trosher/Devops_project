#!/bin/bash

docker build -t zenaluth:tag .
docker run -d -p 80:81 -v "`pwd`/nginx":/etc/nginx zenaluth:tag
