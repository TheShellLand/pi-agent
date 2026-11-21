#!/bin/bash
# build image 

image="pi-agent"
tag="antsable"
dockerfile="Dockerfile-antsable"

set -xe

cd "$(dirname $0)"

docker build "$@" -t $image:latest -f $dockerfile .
#docker tag $image:$tag $image:latest

docker builder prune -fa
docker images | grep $image
