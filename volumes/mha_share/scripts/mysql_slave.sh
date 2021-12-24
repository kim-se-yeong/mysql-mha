mysql -u root -p$MYSQL_ROOT_PASSWORD <<EOSQL

GRANT ALL ON *.* TO myuser@'172.30.0.%' IDENTIFIED BY 'mypass';
FLUSH PRIVILEGES;

stop slave;
reset slave;
CHANGE MASTER TO MASTER_HOST='mha4mysql-master', MASTER_USER='myslave', MASTER_PASSWORD='myslave', MASTER_CONNECT_RETRY=60;
start slave;
EOSQL