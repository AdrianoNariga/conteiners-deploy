FROM ubuntu
MAINTAINER narigacdo

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive && \
	apt-get install -q -y --no-install-recommends vim-puppet vim-addon-manager vim-python-jedi vim-rails vim-scripts\
	vim-syntax-docker telnet autossh clusterssh sshpass iputils-ping \
	vim git tmux openssh-server sudo virtinst libosinfo-bin libguestfs-tools virt-top qemu-utils libvirt-bin \
	libsasl2-dev libldap2-dev libssl-dev python-dev build-essential python-virtualenv python-pip libssl-dev && \
	apt-get clean all && \
	rm -rf /var/lib/apt/lists/* && \
	mkdir -p /var/run/sshd && \
	useradd -g 100 -u 1001 -m -s /bin/bash -p \$1\$S3YNq.zY\$1IDqpo4RN5hwosEvI88AA1 nariga && \
	echo "nariga  ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/nariga

EXPOSE 22
WORKDIR /home/nariga

CMD ["/usr/sbin/sshd","-D"]
