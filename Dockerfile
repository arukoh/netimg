FROM debian:bullseye-slim

RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        iproute2 iputils-ping net-tools dnsutils curl jq netbase whois \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

COPY bin /usr/local/bin
WORKDIR /work
