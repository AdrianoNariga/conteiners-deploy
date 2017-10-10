#!/bin/bash
sed 's/SELINUXTYPE=/SELINUXTYPE=targeted/g' /ete/selinux/config
yum install docker wget vim -y
echo "NSECURE_REGISTRY=\'--insecure-registry 192.168.0.0/16\'" > /etc/sysconfig/docker
systemctl restart docker.service
wget https://github.com/openshift/origin/releases/download/v1.4.1/openshift-origin-server-v1.4.1-3f9807a-linux-64bit.tar.gz
tar -zxf openshift-origin-server-*.tar.gz
cd openshift-origin-server-v1.4.1+3f9807a-linux-64bit/
mv k* o* /usr/local/sbin/
