
echo "Stop do288-apache...!"
podman stop do288-apache 
echo "Remove do288-apache image"
podman rm do288-apache

podman build -t do288-apache .
