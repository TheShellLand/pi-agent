#!/bin/bash
# build image 

image="pi-agent"

set -xe

cd "$(dirname $0)"

docker build "$@" -t $image:python -f Dockerfile-python .
docker tag $image:python $image:latest

docker images | grep $image

