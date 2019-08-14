#!/bin/sh

set -e

DOCKER_REPO=${DOCKER_REPO-alphakevin/pandoc-api}
GIT_BRANCH=${GIT_BRANCH-$(git symbolic-ref --short HEAD)}

if [ $GIT_BRANCH == "master" ]; then
  TAG=latest
else
  TAG=$GIT_BRANCH
fi

# echo "docker build -t $DOCKER_REPO:$TAG ."
docker build -t $DOCKER_REPO:$TAG .
