#!/bin/sh
if [ -n "$PROXY_HOST" ] && [ -n "$PROXY_PORT" ]; then
  eval "echo \"$(cat /etc/squid/squid.conf.template)\"" > /etc/squid/squid.conf
fi

squid -N
