FROM centos
MAINTAINER NarigaCDO "narigacdo@gmail.com"

RUN yum install -y yum-utils createrepo epel-release ; \
    yum install -y centos-release-openstack-newton ; \
    yum -y install https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm ; \
    yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo ; \
    yum clean all

ADD offline-repo /usr/bin/offline-repo
ADD offline-repo.conf /etc/offline-repo.conf

RUN chmod +x /usr/bin/offline-repo

CMD /usr/bin/offline-repo
