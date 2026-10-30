#!/bin/bash
# build image 

image="pi-agent"

set -xe

cd "$(dirname $0)"

docker build "$@" -t $image:antsable -f Dockerfile-antsable .
docker image rm $image:python
docker tag $image:antsable $image:latest

docker builder prune -f

docker images | grep $image

