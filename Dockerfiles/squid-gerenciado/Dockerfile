FROM debian

RUN apt update
RUN apt install squid3 apache2 sarg -y \
 && rm /etc/squid3/squid.conf \
 && rm /etc/apache2/conf-enabled/security.conf \
 && rm /etc/apache2/apache2.conf \
 && rm /etc/sarg/sarg.conf \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir /var/www/html/squid-reports

COPY security.conf /etc/apache2/conf-enabled/security.conf
COPY apache2.conf /etc/apache2/apache2.conf
COPY sarg.conf /etc/sarg/sarg.conf
COPY sarg.apache /etc/apache2/conf-available/sarg.conf
COPY start.sh	/

RUN a2enconf sarg

RUN chmod +x /start.sh

EXPOSE 3128/tcp
CMD ["/start.sh"]
