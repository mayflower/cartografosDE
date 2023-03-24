FROM klakegg/hugo:ext-alpine

RUN apk add git && \
  git config --global --add safe.directory /src

WORKDIR /src/website

COPY docker_startup.sh /usr/local/bin/docker_startup.sh

