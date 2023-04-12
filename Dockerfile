FROM debian:stable-20230411-slim

LABEL maintainer="Arash Hatami <hatamiarash7@gmail.com>"
LABEL org.opencontainers.image.version="1.0.0"
LABEL org.opencontainers.image.authors="hatamiarash7"
LABEL org.opencontainers.image.vendor="hatamiarash7"
LABEL org.opencontainers.image.title="ArvanCloud PaaS Action"
LABEL org.opencontainers.image.description="Deploy new changes to ArvanCloud PaaS"
LABEL org.opencontainers.image.source="https://github.com/hatamiarash7/ar-paas-action"

RUN apt-get update && apt-get install -y \
    wget \
    tar \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]