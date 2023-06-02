FROM debian:bullseye-slim

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y squid

COPY squid.conf /etc/squid/
COPY squid.conf.template /etc/squid/
COPY entrypoint.sh /

EXPOSE 3128

ENTRYPOINT [ "/entrypoint.sh" ]
