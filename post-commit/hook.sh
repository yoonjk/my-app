#!/bin/bash

source /usr/local/etc/ocp4.config
oc set build-hook bc/hook --post-commit --command -- \
    bash -c "\"curl -s -S -i -X POST http://169.51.194.74:32172/dummy  -d '{}' \""
