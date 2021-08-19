#!/bin/bash
echo "$docker_password" | docker login --username "$docker_username" --password-stdin
docker push "$docker_username/fortune-frontend:1.0-${GIT_COMMIT::4}" 
docker push "$docker_username/fortune-frontend:latest" &
wait