
IMG="$1"
DOCKERFILE="$2"

if [ -z $IMG ]; then
    echo "Usage: ./docker-build.sh imageName dockerfileName"
    echo "./docker-build.sh my-httpd "
    echo "./docker-build.sh my-httpd Containerfile"
    exit 0
fi

if [ -z $DOCKERFILE ]; then
  DOCKERFILE="Containerfile"
fi

podman build -t ${IMG} . -f ${DOCKERFILE}
