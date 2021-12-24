# install mha node
echo 'Installing mha-node.....'
wget https://github.com/yoshinorim/mha4mysql-node/releases/download/v0.58/mha4mysql-node-0.58.tar.gz
tar -xzvf mha4mysql-node-0.58.tar.gz
echo 'Installing mha-node.....'

# create make file
echo 'Creating make file.....'
cd mha4mysql-node-0.58
perl Makefile.PL
echo 'Created make file.....'

# excute make & make install
echo 'Installing make.....'
make
make install
echo 'Installed make.....'

echo $PWD
cd
echo $PWD