#!/bin/bash -e

apt-get update
apt-get upgrade -y

apt-get install -y \
  curl \
  gnupg \
  net-tools \
  nmap \
  tcpdump \
  traceroute \
  wget \
  zip

# Install LTS version of Node
curl -sL https://deb.nodesource.com/setup_12.x | bash
apt-get install -y nodejs
