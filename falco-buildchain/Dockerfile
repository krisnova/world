FROM debian:stable

ARG BUILD_BPF=OFF
ENV BUILD_BPF=${BUILD_BPF}

RUN apt update -y
RUN apt install -y git cmake build-essential
RUN apt install -y sudo
RUN apt install -y libssl-dev libyaml-dev libncurses-dev libc-ares-dev libprotobuf-dev protobuf-compiler libjq-dev libyaml-cpp-dev libgrpc++-dev protobuf-compiler-grpc libcurl4-openssl-dev libelf-dev

