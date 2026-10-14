#!/bin/sh
chown -R proxy:proxy /var/spool/squid /var/log/squid
[ -d /var/spool/squid/00 ] || squid -N -z -f /etc/squid/squid.conf
exec squid -N -d 1 -f /etc/squid/squid.conf
