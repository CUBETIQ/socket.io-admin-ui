#!/bin/sh -e

SCRIPT_DIR=$(dirname "$1")

REGISTRY=registry.kh.cubetiqs.com
IMAGE=socket.io-admin
TAG=latest
HUB_NAME="${REGISTRY}/${IMAGE}:${TAG}"
DOCKERFILE_PATH=${SCRIPT_DIR}/ui/Dockerfile.prod

docker build . -f "${DOCKERFILE_PATH}" -t "${HUB_NAME}"

docker push "${HUB_NAME}"