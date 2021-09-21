FROM ubuntu:18.04

RUN apt-get update

# Install GCC & Clang
RUN apt-get install build-essential -y
RUN apt-get install clang -y

# Install needed ARM deps
RUN apt-get install gcc-arm-none-eabi -y
RUN apt-get install binutils-arm-none-eabi -y

# Install pip
ENV export LC_ALL=C.UTF-8
ENV export LANG=C.UTF-8
RUN apt-get -y install python3-pip

# Install pros
RUN echo "Downloading PROS SDK"
RUN python3 -m pip install pros-cli

# Build Project
RUN echo "Building Project"
RUN pros make all
