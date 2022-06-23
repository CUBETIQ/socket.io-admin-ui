#!/bin/sh -e

docker build -f Dockerfile.prod . -t registry.ctdn.net/socketio-admin-ui:latest

docker push registry.ctdn.net/socketio-admin-ui:latest