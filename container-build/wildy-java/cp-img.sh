IMAGE_NAME="$1"

echo "Image-Name:$IMAGE_NAME"

skopeo copy --dest-creds $U:$TOKEN containers-storage:localhost/$IMAGE_NAME \
docker://$I/$U-review/$IMAGE_NAME:latest
