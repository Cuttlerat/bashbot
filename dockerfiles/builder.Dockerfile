FROM alpine:latest
RUN apk add --update --no-cache                \
    python3 docker inotify-tools               \
    bash py-pip tzdata                       &&\
    pip install 'docker-compose==1.14.0'     &&\
    cp /usr/share/zoneinfo/Europe/Moscow       \
       /etc/localtime
ENTRYPOINT ["/bashbot/builder/builder"]
