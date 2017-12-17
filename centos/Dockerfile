FROM centos:7.2.1511
MAINTAINER harryxinwang <chinesecup@sina.com>

RUN mkdir -p /download/utils && \
  yum install -y yum-utils && \
  yum install -y wget && \
  yum install -y which && \
  yumdownloader --destdir /download/utils --resolve yum-utils && \
  yumdownloader --destdir /download/utils --resolve wget-1.14-15.el7_4.1.x86_64 && \
  wget https://nmap.org/dist/ncat-7.60-1.x86_64.rpm -O /download/utils/ncat-7.60-1.x86_64.rpm && \
  wget https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 -O /download/utils/jq
