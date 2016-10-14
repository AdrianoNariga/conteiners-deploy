#!/bin/bash
echo "iniciando squid"
/usr/sbin/squid3
sleep 5
tail -f /var/log/squid3/access.log
