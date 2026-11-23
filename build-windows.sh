#!/bin/bash
# build image on windows
# it needs to fix dos2unix for *.sh files

image="pi-agent"

set -xe

cd "$(dirname $0)"

bash install/fix-dos2unix.sh
bash install/install-docker.sh

python generate_models_config.py || python3 generate_models_config.py

docker build --no-cache "$@" -t $image:latest -f Dockerfile .

docker builder prune -fa
docker images | grep $image
