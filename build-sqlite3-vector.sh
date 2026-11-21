#!/bin/bash
# build image 

image="pi-agent"
tag="sqlite3-vector"

set -xe

cd "$(dirname $0)"

docker build "$@" -t $image:python -f Dockerfile-sqlite3-vector .
docker tag $image:$tag $image:latest

docker images | grep $image

