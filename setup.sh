#!/bin/zsh

#Output
set -x

# Build the docker image
docker build -t newrelic-infra-agent .

# Run the docker image
docker run \
    -d \
    --name newrelic-infra \
    --network=host \
    --cap-add=SYS_PTRACE \
    --privileged \
    --pid=host \
    --cgroupns=host \
    -v "/:/host:ro" \
    -v "/var/run/docker.sock:/var/run/docker.sock" \
    newrelic-infra-agent
