FROM debian:latest
COPY bashbot /
RUN     apt-get update      \
     && apt-get install -y  \
        jq curl
ENTRYPOINT ["/bashbot"]
