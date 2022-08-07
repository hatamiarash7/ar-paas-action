FROM alpine:3.10

RUN echo $CLI_VERSION 

ARG CLI_VERSION
ENV CLI_VERSION $CLI_VERSION

RUN mkdir -p /service

ADD https://github.com/arvancloud/cli/releases/download/v${CLI_VERSION}/arvan_${CLI_VERSION}_linux_amd64.tar.gz /service/

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]