IMG="$1"
TAG="latest"
skopeo copy --format v2s1 \
containers-storage:localhost/${IMG}:${TAG} \
docker://quay.io/jgyun_kr/${IMG}:${TAG} 
