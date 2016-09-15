FROM alpine:latest

MAINTAINER Rajat Vig <rajat.vig@gmail.com>

ARG VCS_REF
ARG IMAGE_VERSION

LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/rajatvig/docker-dynalite-alpine" \
      org.label-schema.name="dynalite-alpine" \
      org.label-schema.description="Run Dynalite on Alpine Linux" \
      org.label-schema.version=$IMAGE_VERSION \
      org.label-schema.schema-version="1.0" \
      org.label-schema.docker.cmd="docker run -d -t -p 8000:8000 rajatvig/dynalite-alpine:latest"

EXPOSE 8000

ENV DATADIR /var/lib/dynalite

RUN \
  mkdir $DATADIR && \
  apk add --no-cache python make g++ nodejs && \
  npm install -g dynalite && \
  apk del python make g++ && \
  rm -rf /tmp/* /var/cache/apk/*

WORKDIR /var/lib/dynalite

VOLUME $DATADIR

ENTRYPOINT ["dynalite", "--path", "/var/lib/dynalite", "--port", "8000", "--createTableMs", "0", "--deleteTableMs", "0", "--updateTableMs", "0"]
