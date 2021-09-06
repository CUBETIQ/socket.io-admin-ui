#!/bin/sh -e

IMAGE=registry.kh.cubetiqs.com/socketio-admin-ui:latest
NAME=socketio-admin-ui

docker pull "${IMAGE}"

docker rm -f "${NAME}"

docker run -d -p 8015:80 --restart always --name "${NAME}" "${IMAGE}"