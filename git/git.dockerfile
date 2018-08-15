FROM alpine:latest

RUN apk add --no-cache git \
  && apk add --no-cache bash \


RUN apt-get update && apt-get install -y \
  direnv \
  vim \
  git \
  curl \


RUN echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
RUN git config --global alias.st status \
  && git config --global alias.co checkout \
  && git config --global alias.ci commit \
  && git config --global alias.br branch \
  && git config --global alias.flog 'log --format=fuller' \



VOLUME /workspace
WORKDIR /workspace

ENTRYPOINT /bin/bash
