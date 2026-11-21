#!/bin/bash
# build image 

image="pi-agent"
tag="antsable"

set -xe

cd "$(dirname $0)"

docker build "$@" -t $image:antsable -f Dockerfile-antsable .
docker image rm $image:python
docker tag $image:$tag $image:latest

docker builder prune -fa

docker images | grep $image
