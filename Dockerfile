FROM alpine

ENV VERSION=0.88.1

RUN apk add --no-cache \
    curl \
    git \
    openssh-client \
    rsync \
    libc6-compat \ 
    g++

RUN mkdir -p /usr/local/src \
    && cd /usr/local/src \
    && curl -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_extended_${VERSION}_linux-64bit.tar.gz | tar -xz && \
    mv hugo /usr/local/bin/hugo

WORKDIR /src

EXPOSE 1313
