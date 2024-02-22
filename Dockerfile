FROM rust:slim
LABEL version="0.0.1" maintainer="js4000all@gmail.com"
ENV LESSCHARSET=utf-8

RUN set -x \
    && apt update \
    && apt upgrade -y \
    && apt install -y git curl vim

COPY ./profile.d /etc/profile.d
WORKDIR /usr/src/app
