# base image of latest centos7
from centos:centos7

run rm -f /etc/localtime && ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

#### proxy_settings

run yum install -y http://download.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-2.noarch.rpm &&\
    yum update -y &&\
    yum install -y git &&\
    yum clean all
