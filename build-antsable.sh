#!/bin/bash
# build image 

image="pi-agent"

set -xe

cd "$(dirname $0)"

docker build "$@" -t $image:latest -f Dockerfile-antsable .
docker tag $image:antsable pi-agent:latest
docker image rm $iamge:python

docker builder prune -f

docker images | grep $image

