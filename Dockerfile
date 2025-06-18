FROM ubuntu:noble-20250529

LABEL org.opencontainers.image.url="https://github.com/misotolar/docker-openwrt-build-system"
LABEL org.opencontainers.image.description="Docker OpenWRT Build System container"
LABEL org.opencontainers.image.authors="Michal Sotolar <michal@sotolar.com>"

ARG DEBIAN_FRONTEND=noninteractive
ARG APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn

WORKDIR /build/openwrt

RUN set -ex; \
    apt update; \
    apt -y full-upgrade; \
    apt -y install \
        bison \
        build-essential \
        clang \
        flex \
        g++ \
        gawk \
        gcc-multilib \
        g++-multilib \
        gettext \
        git \
        libncurses5-dev \
        libssl-dev \
        python3-setuptools \
        rsync \
        swig \
        unzip \
        zlib1g-dev \
        file \
        wget \
    ; \
    rm -rf \
        /var/lib/apt/lists/*

USER ubuntu
