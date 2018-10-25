FROM golang:1.11-alpine3.7

ENV LIBRDKAFKA_VERSION v0.11.6

RUN cat /etc/apk/repositories
  
RUN apk add --no-cache alpine-sdk bash ca-certificates \
      libressl \
      tar \
      git openssh openssl yajl-dev zlib-dev cyrus-sasl-dev openssl-dev build-base coreutils

WORKDIR /tmp

RUN git clone \
    --branch ${LIBRDKAFKA_VERSION} \
    --depth 1 \
    https://github.com/edenhill/librdkafka.git
 
WORKDIR /tmp/librdkafka

RUN /tmp/librdkafka/configure
RUN make
RUN make install

RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2
