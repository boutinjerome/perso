FROM oraclelinux:7

MAINTAINER Jerome Boutin <jerome.boutin@oracle.com>

ENV https_proxy "http://www-proxy.us.oracle.com:80/"
ENV http_proxy "http://www-proxy.us.oracle.com:80/"
ENV ftp_proxy "http://www-proxy.us.oracle.com:80/"
ENV no_proxy ".us.oracle.com,.oraclecorp.com"

RUN yum makecache fast && yum update -y && yum install -y --nogpgcheck "http://artifactory-slc.oraclecorp.com/artifactory/opc-cloudarch-release-local/extra/epel-release-latest-7.noarch.rpm" && yum install -y python-pip && yum clean all

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install --upgrade virtualenv
