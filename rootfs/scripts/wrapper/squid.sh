#!/bin/sh

mkdir -p /var/cache/squid /var/log/squid
chown -R squid:squid /var/cache/squid /var/log/squid

# Launch squid
echo "Starting Squid..."
exec /usr/sbin/squid -NYCd 1