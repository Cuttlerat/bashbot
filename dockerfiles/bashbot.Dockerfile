FROM alpine:3.6
MAINTAINER Aleksei Kioller <avkioller@gmail.com>
COPY bashbot /
RUN  apk add --update --no-cache             \
     jq curl bash sed coreutils              \
     tzdata w3m sqlite                       \
  && cp /usr/share/zoneinfo/Europe/Moscow    \
     /etc/localtime
ENTRYPOINT ["/bashbot"]
