FROM alpine:latest
RUN apk add --update --no-cache python3 docker inotify-tools bash py-pip &&\
    pip install 'docker-compose==1.14.0'
ENTRYPOINT ["/bashbot/builder/auto_builder"]
