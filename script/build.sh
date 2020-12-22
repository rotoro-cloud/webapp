#!/usr/bin/env sh

set -ev

export BUILD_VERSION="0.0.1"
export BUILD_DATE=`date +%Y-%m-%dT%T%z`

SCRIPT_DIR=$(dirname "$0")

echo ${SCRIPT_DIR}

if [ -z "$COMMIT" ] ; then
    echo "Cannot find COMMIT env var"
    exit 1
fi

$(docker -v >/dev/null 2>&1)
if [ $? -eq 0 ]; then
    DOCKER_CMD=docker
else
    DOCKER_CMD=`sudo docker`
fi


$DOCKER_CMD build \
  --build-arg BUILD_VERSION=$BUILD_VERSION \
  --build-arg BUILD_DATE=$BUILD_DATE \
  --build-arg COMMIT=$COMMIT \
  -t ${REPO}:${COMMIT} .
