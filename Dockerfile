FROM alpine:latest

ENV MKDOCS_VERSION=0.16.3 \
    GIT_REPO='false' \
    LIVE_RELOAD_SUPPORT='false' \
    ADD_MODULES='false'

RUN \
    apk add --update \
        ca-certificates \
        bash \
        git \
        openssh \
        python2 \
        python2-dev \
        py-setuptools; \
    easy_install-2.7 pip && \
    pip install mkdocs==${MKDOCS_VERSION} && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*
