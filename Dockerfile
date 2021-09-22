FROM ubuntu:18.04

RUN apt-get update && sudo apt-get install -y apt-utils

# Install GCC & Clang
RUN apt-get install build-essential -y
RUN apt-get install clang -y

# Install needed ARM deps
RUN apt-get install gcc-arm-none-eabi -y
RUN apt-get install binutils-arm-none-eabi -y

# Install pip
RUN apt-get -y install python3-pip

# Install pros
RUN echo "Downloading PROS SDK"
RUN python3 -m pip install pros-cli

# Build Project
# Copies file from action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
