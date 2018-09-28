FROM alpine:latest

RUN apk add --no-cache git
RUN apk add --no-cache bash

VOLUME /workspace
WORKDIR /workspace

ENTRYPOINT /bin/bash
