FROM rhel6
MAINTAINER NarigaCDO "narigacdo@gmail.com"

RUN yum install -y yum-utils createrepo ; \
    yum clean all ; \
    rm -f /etc/yum.repos.d/redhat.repo

ADD redhat.repo /etc/yum.repos.d/redhat.repo
ADD offline-repo /usr/bin/offline-repo
ADD offline-repo.conf /etc/offline-repo.conf

RUN chmod +x /usr/bin/offline-repo

CMD /usr/bin/offline-repo
