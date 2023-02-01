#!/bin/bash

docker build -t zenaluth:tag .
docker run -d -p 81:81 zenaluth:tag