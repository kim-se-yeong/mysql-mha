#!/bin/bash
echo 'Setting up https for apt...'
apt-get update
apt-get install -y apt-transport-https ca-certificates
echo 'Set up https for apt'

echo 'Adding repositories and keys...'
add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu xenial main universe"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CE7709D068DB5E88

add-apt-repository "deb https://repo.sovrin.org/deb xenial master"
add-apt-repository "deb https://repo.sovrin.org/sdk/deb xenial stable"
apt-get update
echo 'Added repositories and keys'

apt-get install -y make
apt-get install -y wget
apt-get install -y libdbd-mysql-perl libparams-validate-perl libparallel-forkmanager-perl libconfig-tiny-perl liblog-dispatch-perl libnet-telnet-perl libmodule-install-perl