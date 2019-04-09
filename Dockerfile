FROM ubuntu:18.04

WORKDIR /home/ci

RUN apt-get update
RUN apt-get install qemu -y