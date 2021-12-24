# mha manager server
FROM debian:10

# Install "software-properties-common" (for the "add-apt-repository")
RUN apt-get update && apt-get install -y software-properties-common
RUN apt-get install -y --no-install-recommends apt-utils

RUN apt-get install -y apt-transport-https ca-certificates && \
    # add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu xenial main universe" && \
    # apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CE7709D068DB5E88 && \
    # add-apt-repository "deb https://repo.sovrin.org/deb xenial master" && \
    # add-apt-repository "deb https://repo.sovrin.org/sdk/deb xenial stable" && \
    apt-get update

# package init
RUN apt-get install -y vim make wget openssh-client openssh-server net-tools iputils-ping && \
    apt-get install -y libdbd-mysql-perl libparams-validate-perl libparallel-forkmanager-perl libconfig-tiny-perl liblog-dispatch-perl libnet-telnet-perl libmodule-install-perl

# manager init
WORKDIR /root
RUN wget https://github.com/yoshinorim/mha4mysql-manager/releases/download/v0.58/mha4mysql-manager-0.58.tar.gz && \
    tar -xzvf mha4mysql-manager-0.58.tar.gz

WORKDIR /root/mha4mysql-manager-0.58
RUN perl Makefile.PL && \
    make && make install

RUN mkdir -p /etc/masterha
RUN mkdir -p /masterha/scripts

WORKDIR /root/mha4mysql-manager-0.58/samples
RUN cp conf/* /etc/masterha && \
    cp scripts/* /masterha/scripts

RUN mkdir -p /masterha/app1

# node init
WORKDIR /root
RUN wget https://github.com/yoshinorim/mha4mysql-node/releases/download/v0.58/mha4mysql-node-0.58.tar.gz && \
    tar -xzvf mha4mysql-node-0.58.tar.gz

WORKDIR /root/mha4mysql-node-0.58
RUN perl Makefile.PL && \
    make && make install

# start ssh
WORKDIR /root
# RUN /bin/bash service ssh start

