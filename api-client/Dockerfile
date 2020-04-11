FROM alpine:latest

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

RUN chmod a+x /docker-entrypoint.sh && \
    apk update && \
    apk add curl
