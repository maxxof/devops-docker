FROM alpine:latest AS builder

RUN apk update && \
    apk add --no-cache \
    git \
    bash \
    curl

FROM docker
WORKDIR /usr/src/app/
COPY builder.sh .

ENTRYPOINT ["sh", "/usr/src/app/builder.sh"]

