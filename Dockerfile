FROM debian:latest
ENV TZ=Europe/Moscow
COPY bashbot /
RUN     apt-get update      \
     && apt-get install -y  \
        jq curl
ENTRYPOINT ["/bashbot"]
