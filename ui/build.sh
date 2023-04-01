#!/bin/sh -e

docker build -f Dockerfile.prod . -t registry1.ctdn.net/cubetiq/socketio-admin-ui:latest

docker push registry1.ctdn.net/cubetiq/socketio-admin-ui:latest
