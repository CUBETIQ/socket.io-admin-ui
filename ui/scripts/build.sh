#!/bin/sh -e

REGISTRY=registry.kh.cubetiqs.com
IMAGE=socketio-admin-ui
TAG=latest
HUB_NAME="${REGISTRY}/${IMAGE}:${TAG}"
DOCKERFILE_PATH=Dockerfile.prod

docker build . -f "${DOCKERFILE_PATH}" -t "${HUB_NAME}"

docker push "${HUB_NAME}"