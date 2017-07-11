FROM alpine:latest
ENV TZ=Europe/Moscow
COPY bashbot /
RUN  apk add --update --no-cache             \
     jq curl bash sed coreutils tzdata w3m   \
  && cp /usr/share/zoneinfo/Europe/Moscow    \
     /etc/localtime
ENTRYPOINT ["/bashbot"]
