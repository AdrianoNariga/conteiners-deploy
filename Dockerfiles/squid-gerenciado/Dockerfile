FROM debian

RUN apt update
RUN apt install squid3 -y \
 && mv /etc/squid3/squid.conf /etc/squid3/squid.conf.dist \
 && rm -rf /var/lib/apt/lists/*

RUN rm -f /etc/squid3/squid.conf
COPY start.sh	/

RUN chmod +x /start.sh

EXPOSE 3128/tcp
CMD ["/start.sh"]
