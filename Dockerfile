FROM alpine:latest
COPY bashbot /
RUN  apk add --update --no-cache             \
     jq curl bash sed coreutils w3m          
ENTRYPOINT ["/bashbot"]
