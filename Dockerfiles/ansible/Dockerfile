FROM ubuntu:16.04
MAINTAINER NarigaCDO "narigacdo@gmail.com"

RUN apt update && \
    apt install libsasl2-dev libldap2-dev iputils-ping \
                libssl-dev python-dev build-essential \
                python-virtualenv python-pip libssl-dev -y && \
    pip install --upgrade pip && \
    pip install --upgrade pyvmomi vconnector && \
    pip install --upgrade paramiko requests && \
    pip install --upgrade PyYAML Jinja2 httplib2 && \
    pip install --upgrade six markupsafe ecdsa && \
    pip install --upgrade shade apache-libcloud && \
    pip install --upgrade boto PyOpenSSL python-ldap && \
    pip install --upgrade sklearn joblib pyparsing && \
    pip install --upgrade wrapt debtcollector pytz && \
    pip install --upgrade debtcollector monotonic && \
    pip install --upgrade netaddr shade functools32 && \
    pip install --upgrade ansible && \
    apt clean all
