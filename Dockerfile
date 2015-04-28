FROM duffqiu/dockerjdk7:latest
MAINTAINER duffqiu@gmail.com

RUN rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7
RUN yum -y  update
RUN yum -y install cppunit git gcc ant
RUN yum -y install python-setuptools
RUN yum -y install automake pkgconfig libtool
RUN yum -y install hostname

WORKDIR /workspace

VOLUME /workspace

ENTRYPOINT [ "/bin/bash", "-c" ]

