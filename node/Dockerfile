# master server
FROM mysql:5.7.31

# Install "software-properties-common" (for the "add-apt-repository")
RUN apt-get update && apt-get install -y software-properties-common
RUN apt-get install -y --no-install-recommends apt-utils

RUN apt-get install -y apt-transport-https ca-certificates && \
    apt-get update

RUN apt-get install -y vim make wget openssh-client openssh-server net-tools iputils-ping && \
    apt-get install -y libdbd-mysql-perl libparams-validate-perl libparallel-forkmanager-perl libconfig-tiny-perl liblog-dispatch-perl libnet-telnet-perl libmodule-install-perl libtime-hires-perl


WORKDIR /root
RUN wget https://github.com/yoshinorim/mha4mysql-node/releases/download/v0.58/mha4mysql-node-0.58.tar.gz && \
    tar -xzvf mha4mysql-node-0.58.tar.gz

WORKDIR /root/mha4mysql-node-0.58
RUN perl Makefile.PL && \
    make && make install

# start ssh
WORKDIR /root