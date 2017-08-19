FROM alpine:3.6
MAINTAINER Aleksei Kioller <avkioller@gmail.com>
RUN apk add --update --no-cache                \
    python3 docker inotify-tools               \
    bash py-pip tzdata                       
RUN pip install 'docker-compose==1.14.0'     
RUN cp /usr/share/zoneinfo/Europe/Moscow       \
       /etc/localtime
ENTRYPOINT ["/bashbot/builder/builder"]
