#!/bin/sh -e

IMAGE=registry.kh.cubetiqs.com/socketio-admin-ui:latest

docker pull "${IMAGE}"

docker run -d -p 8015:80 --restart always --name socketio-admin-ui "${IMAGE}"