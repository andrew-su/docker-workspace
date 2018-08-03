FROM golang:latest

RUN apt-get update && apt-get install -y \
  direnv \
  vim \
  git \
  curl

RUN echo 'eval "$(direnv hook bash)"' >> ~/.bashrc

VOLUME /go
WORKDIR /go

ENTRYPOINT /bin/bash
