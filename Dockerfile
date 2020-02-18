FROM alpine:latest

ENV MKDOCS_VERSION=0.17.5 \
    GIT_REPO='false' \
    LIVE_RELOAD_SUPPORT='false' \
    ADD_MODULES='false'

RUN \
    apk add --update \
        ca-certificates \
        bash \
        git \
        openssh \
        python3 \
        python3-dev && \
    pip3 install --upgrade pip && \
    pip install mkdocs==${MKDOCS_VERSION} && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*
