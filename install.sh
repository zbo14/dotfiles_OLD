#!/bin/bash -e

apt-get update
apt-get upgrade -y

apt-get install -y \
  apt-transport-https \
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

## Remove Python2 and make Python3 the default
update-alternatives --remove python /usr/bin/python2
update-alternatives --install /usr/bin/python python /usr/bin/python3 10

## Install Tor
echo 'deb https://deb.torproject.org/torproject.org bionic main
deb-src https://deb.torproject.org/torproject.org bionic main' >> /etc/apt/sources.list.d/tor.list

curl https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --import
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -

apt update
apt install -y tor deb.torproject.org-keyring
