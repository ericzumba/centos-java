FROM centos:centos7 
MAINTAINER Caires Santos <caires.santos@vivareal.com> & Eric Torti <eric.torti@vivareal.com>

RUN yum -y install wget && \
  pushd /opt && \
  wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz" && \
  tar xzf jdk-8u60-linux-x64.tar.gz && \
  rm jdk-8u60-linux-x64.tar.gz  && \
  pushd jdk1.8.0_60/ && \
  alternatives --install /usr/bin/java java /opt/jdk1.8.0_60/bin/java 2 && \
  alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_60/bin/jar 2 && \
  alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_60/bin/javac 2 && \
  alternatives --set jar /opt/jdk1.8.0_60/bin/jar && \
  alternatives --set javac /opt/jdk1.8.0_60/bin/javac
