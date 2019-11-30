#!/bin/bash -e

apt update
apt upgrade -y

apt install -y \
  gnupg \
  nmap \
  traceroute \
  zip
