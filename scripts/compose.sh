#! /bin/bash

set -e

[ -x "$(which docker)" ]         || (echo "docker not found" && exit 1)
[ -x "$(which docker-compose)" ] || (echo "docker-compose not found" && exit 1)

export DOCKER_GROUP_ID=${DOCKER_GROUP_ID:=$(getent group docker | cut -d: -f3)}

docker-compose -f docker/compose.yaml up