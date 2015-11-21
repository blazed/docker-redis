FROM quay.io/exsules/base:alpine

MAINTAINER exsules <contact@exsules.com

RUN apk --update add \
  redis bash && \
  rm -rf /var/cache/apk/*

RUN mkdir -p /data && chown redis:redis /data

ADD root /

VOLUME ["/data"]

EXPOSE 6379