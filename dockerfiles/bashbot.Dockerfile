FROM alpine:3.6
MAINTAINER Aleksei Kioller <avkioller@gmail.com>
RUN  apk add --update --no-cache             \
     jq curl bash sed coreutils              \
     tzdata w3m sqlite                       
RUN  cp /usr/share/zoneinfo/Europe/Moscow    \
     /etc/localtime
COPY bashbot /
ENTRYPOINT ["/bashbot"]
