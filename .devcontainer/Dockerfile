FROM rust:slim

RUN set -x \
  && apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y \
    git \
    less \
    vim \
    curl \
    build-essential \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && rustup component add \
    clippy \
    rustfmt \
  && cargo install cargo-binstall \
  && cargo binstall --no-confirm --no-symlinks \
    cargo-edit \
    cargo-watch \
    cargo-tree \
  && adduser --disabled-password dev

ENV LESSCHARSET=utf-8
ENV PAGER=less

WORKDIR /usr/src/app
COPY ./profile.d/alias.sh /etc/profile.d
USER dev
