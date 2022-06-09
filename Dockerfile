FROM golang:latest

RUN set -eu && \
apt-get update -y && \
apt-get upgrade -y && \
apt-get install -y neovim locales && \
sed -i -E 's/# (ja_JP.UTF-8)/\1/' /etc/locale.gen && \
locale-gen && \
update-locale LANG=ja_JP.UTF-8

ENV SHELL=/bin/bash
ENV LC_ALL=ja_JP.utf8

WORKDIR /root
