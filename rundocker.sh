#!/usr/bin/env bash

# Build image
docker build --tag=loadtest .

# List docker images
docker image ls

# Run flask app
docker run -d -p 5000:5000 loadtest

# # debug
# docker run -it --entrypoint /bin/bash loadtest 

# # stop all containers
# docker stop $(docker ps -a -q)

# # remove all containers
# docker rm $(docker ps -a -q)

# # delete all iamges
# docker rmi $(docker images -a -q)

# # list docker images
# docker images 

# # list docker containers
# docker ps -a 