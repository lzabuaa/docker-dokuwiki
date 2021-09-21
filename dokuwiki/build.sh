#!/bin/bash

VERSION=`date "+%Y%m%d%H%M%S%N"`
GROUP=docker-hub.deyiyc.com:5000/kuilian
IMAGE=dokuwiki
NAME=$GROUP/$IMAGE

docker build --no-cache -t $NAME:$VERSION
docker push $NAME:$VERSION

docker tag $NAME:$VERSION $NAME:latest
docker push $NAME:latest