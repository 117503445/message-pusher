docker build -t message-pusher-builder -f Dockerfile.builder .
docker run --rm -it -v $(pwd):/workspace message-pusher-builder