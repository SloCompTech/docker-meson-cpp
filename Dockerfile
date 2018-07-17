FROM python:3-slim-stretch

# Version of docker
ARG VERSION="1"

# Add properties to container
LABEL maintainer="Martin Dagarin <martin.dagarin@gmail.com>" version=${VERSION}

# Shell
SHELL ["/bin/bash","-c"]

# Get updates install dependencies
RUN apt-get update && apt-get install git make g++ ninja-build build-essential pkg-config gdb valgrind -y && apt-get clean && rm -rf /var/lib/apt/list/* && \
    pip install meson
