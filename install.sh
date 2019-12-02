#!/bin/bash -e

apt-get update
apt-get upgrade -y

apt-get install -y \
  curl \
  gnupg \
  net-tools \
  nmap \
  python3-pip \
  socat \
  tcpdump \
  traceroute \
  wget \
  zip

update-alternatives --remove python /usr/bin/python2
update-alternatives --install /usr/bin/python python /usr/bin/python3 10
