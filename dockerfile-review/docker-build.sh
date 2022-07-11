#!/bin/bash

podman stop hello
podman rm hello
podman build -t do180-apache . --layers=false
