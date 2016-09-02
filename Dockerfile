FROM centos
MAINTAINER  Simon Loader simon.loader@r3cev.com

# Node version
ENV NODE_VERSION 4.5.0

# Upgrading system
RUN yum -y update
RUN yum -y upgrade

RUN yum install -y wget tar make gcc-c++ openssl openssl-devel
RUN cd /tmp && wget http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.gz && tar xzf node-v$NODE_VERSION.tar.gz && cd node-v$NODE_VERSION && ./configure && make && make install


run npm install -g angular-cli
