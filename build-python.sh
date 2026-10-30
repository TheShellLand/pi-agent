#!/bin/bash
# build image 

image="pi-agent"

set -xe

cd "$(dirname $0)"

docker build "$@" -t $image:latest -f Dockerfile-python .
docker tag $image:python pi-agent:latest

docker images | grep $image

