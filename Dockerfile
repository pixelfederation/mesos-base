################################################################################
# mesos-base:1.1.0
# Date: 9/29/2015
# Mesos Version: 0.24.1-0.2.35.ubuntu1404
#
# Description:
# Base build for mesos related containers.
################################################################################

FROM mrbobbytables/ubuntu-base:1.0.0
MAINTAINER Bob Killen / killen.bob@gmail.com / @mrbobbytables


ENV JAVACPROOT=/usr/share/java          \
    LC_ALL=en_US.UTF-8                  \
    VERSION_MESOS=0.24.1-0.2.35.ubuntu1404

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E56151BF                                     \
 && echo "deb http://repos.mesosphere.io/ubuntu/ trusty main" >> /etc/apt/sources.list.d/mesosphere.list  \
 && locale-gen en_US.UTF-8    \
 && dpkg-reconfigure locales  \
 && apt-get -y update         \
 && apt-get -y install        \
    mesos=$VERSION_MESOS      \
    curl                      \
    wget                      \
 && apt-get clean             \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*  \
 && rm -rf /etc/mesos/zk

