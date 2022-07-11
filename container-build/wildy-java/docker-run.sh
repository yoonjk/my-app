podman stop hello
podman rm hello
podman run --name hello -d -p 127.0.0.1:8080:8080 do288-java

curl localhost:8080/api/hello
