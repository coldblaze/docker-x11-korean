FROM ubuntu:18.04

MAINTAINER https://github.com/coldblaze

RUN apt-get update -qq -y && apt-get install -qq -y \
    net-tools \
    iputils-ping \
    language-pack-ko \
    fonts-nanum \
    fonts-nanum-extra \
    && rm -rf /var/lib/apt/lists/*
RUN locale-gen ko_KR.UTF-8

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV LANGUAGE=ko_KR:ko:en_GB:en
ENV TERM=xterm

WORKDIR /root
USER root
CMD bash
