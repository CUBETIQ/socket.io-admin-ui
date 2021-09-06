#!/bin/sh -e

IMAGE=registry.kh.cubetiqs.com/socket.io-admin:latest

docker pull "${IMAGE}"

docker run -d -p 8015:80 --restart always --name socket.io-admin-ui "${IMAGE}"