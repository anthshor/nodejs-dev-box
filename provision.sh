#!/bin/bash
# v0.1 Initial - Install nodejs for node school.

# Proxy
[ -f /vagrant/proxy.env ] && source /vagrant/proxy.env

# Install Pre Requirement Packages
yum install -y libaio git gcc gcc-c++ autoconf automake

# Install node.js
rpm -q nodejs
if [ $? -ne 0 ]; then
  curl -sL https://rpm.nodesource.com/setup | bash -
  yum install -y nodejs
fi

# Core
mypackages="learnyounode javascripting git-it how-to-npm stream-adventure"
for mypackage in $mypackages
do  
  npm ls -g ${mypackage};
  if [ $? -eq 0 ]; then
    echo "${mypackage} already installed, nothing to do";
  else
    npm install -g $mypackage;
  fi
done
