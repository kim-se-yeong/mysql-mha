# conf 위치 : /etc/masterha
# script 위치 : /masterha/scripts
# mha manager/remote server 실행 정보 저장 및 로그 디렉토리 : /masterha/app1

# install mysql
# echo 'Installing mysql.....'
# apt install mysql-server
# echo 'Installed mysql.....'

# include kimseyeong in mysql group
# useradd -g mysql mha
# usermod -aG mysql kimseyeong
# cat /etc/passwd

# create mha user
# echo 'Creating mha user.....'
# useradd -g mysql mha
# echo 'Creating mha user.....'

cat /etc/passwd

# # install manager
echo 'Installing mha-manager.....'
wget https://github.com/yoshinorim/mha4mysql-manager/releases/download/v0.58/mha4mysql-manager-0.58.tar.gz
tar -xzvf mha4mysql-manager-0.58.tar.gz
echo 'Installed mha-manager.....'

echo $PWD
# # create make file
cd mha4mysql-manager-0.58
perl Makefile.PL

# # excute make & make install
echo 'Installing make.....'
make
make install
echo 'Installed make.....'

# # create directory for conf and script
mkdir -p /etc/masterha
mkdir -p /masterha/scripts

# # move conf and script file
echo $PWD
cd samples
cp conf/* /etc/masterha
cp scripts/* /masterha/scripts

# # move to home directory
echo 'Move home directory.....'
cd
echo $PWD
echo 'Moved home direcroty.....'

# # create directory for log ..
echo 'Creating directory for log.....'
mkdir -p /masterha/app1
echo 'Created directory for log.....'

# # change owner of masterha file
# echo 'Change owner of masterha file.....'
# chown -R mha:mysql /masterha