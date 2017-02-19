FROM alpine
MAINTAINER foospidy

RUN apk add --update bash openssh-client && rm -rf /var/cache/apk/*

RUN mkdir -p /root/.ssh

COPY start /

EXPOSE 3306
