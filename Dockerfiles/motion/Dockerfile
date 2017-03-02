FROM debian:jessie
MAINTAINER kfei <kfei@kfei.net>

RUN apt-get update && \
	apt-get install -q -y --no-install-recommends \
	motion \
	x264 && \
	apt-get clean all

COPY script/* /usr/local/bin/ 
COPY motion.conf /etc/motion/motion.conf

EXPOSE 8081
VOLUME ["/var/lib/motion"]
WORKDIR /var/lib/motion
 
ENTRYPOINT ["/usr/local/bin/dockmotion"]
