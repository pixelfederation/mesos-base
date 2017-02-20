################################################################################
# mesos-base:1.3.0
# Date: 02/20/2017
# Mesos Version: 1.1.0-2.0.107.ubuntu1404
#
# Description:
# Base build for mesos related containers.
# Former author
# MAINTAINER Bob Killen / killen.bob@gmail.com / @mrbobbytables
################################################################################

FROM pixelfederation/pixel-base:1.1.0
MAINTAINER Milan Baran / mbaran@pixelfederation.com / @mbaran


ENV VERSION_MESOS=1.1.0-2.0.107.ubuntu1404

RUN apt-get -y update             \
 && apt-get -y install            \
    mesos=$VERSION_MESOS          \
 && apt-get clean                 \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*  \
 && rm -rf /etc/mesos/zk
