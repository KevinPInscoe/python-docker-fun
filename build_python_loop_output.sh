#!/bin/bash -v

# This script is a local build for kevin_test_loop_python binary for
# pod and container testing

version="1.0"

docker build -t kevin_test_loop_python:${version} -f Dockerfile .
image_id=$(docker images | grep kevin_test_loop_python | grep "${version}" | awk '{ print $3 }')
echo "Image ID: ${image_id}"
docker tag "${image_id}" ghcr.io/kevinpinscoe/kevin_test_loop_python:latest
GITHUB_TOKEN=<github-token>
echo $GITHUB_TOKEN | docker login ghcr.io -u <Github login> --password-stdin
docker push ghcr.io/kevinpinscoe/kevin_test_loop_python:latest
