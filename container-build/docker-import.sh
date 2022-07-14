#!/bin/bash

IMG="$1"
TAG="$2"
ORG="jgyun_kr"

if [ -z $IMG ]; then
    echo "Usage: ./docker-import.sh imageName tagName(optional)"
    echo "Ex) ./docker-import.sh
    exit 0
fi

oc import-image ${IMG} --confirm \
--reference-policy local \
--from quay.io/${ORG}/${IMG}:latest
