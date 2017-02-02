#!/bin/bash
cp docker-squid.service /etc/systemd/system/docker-squid.service
systemctl daemon-reload
systemctl enable docker-squid.service
