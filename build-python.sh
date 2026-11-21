#!/bin/bash
# build image 

image="pi-agent"
tag="python"

set -xe

cd "$(dirname $0)"

docker build "$@" -t $image:python -f Dockerfile-python .
docker tag $image:$tag $image:latest

docker images | grep $image
