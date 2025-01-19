FROM alpine:3

RUN apk update
RUN apk add --no-cache \
  perl \
  perl-html-parser \
  perl-http-cookies \
  perl-lwp-useragent-determined \
  perl-json \
  perl-json-xs \
  perl-lwp-protocol-https \
  perl-uri \
  ca-certificates \
  perl-net-libidn \
  perl-net-ssleay \
  perl-io-socket-ssl \
  perl-libwww \
  perl-mozilla-ca \
  perl-net-http

RUN apk add --no-cache xmltv

VOLUME /data
ADD --chmod=0755 zap2xml.pl /zap2xml.pl

ENTRYPOINT ["/zap2xml.pl"]
