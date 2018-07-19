FROM alpine
RUN apk add --update rethinkdb \
    && rm -rf /var/cache/apk/*
ENTRYPOINT ["rethinkdb", "proxy", "--bind", "all"]

