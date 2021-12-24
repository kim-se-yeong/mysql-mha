docker cp ./script/NodeUtil.pm mha4mysql-manager:/usr/local/share/perl/5.28.1/MHA/
docker cp ./util/master_ip_failover mha4mysql-manager:/masterha/scripts/
docker cp ./util/master_ip_online_change mha4mysql-manager:/masterha/scripts/
docker cp ./script/mha_set_vip.sh mha4mysql-manager:/masterha/scripts/
# docker cp ./script/change_virtual_ip_master_to_slave.sh mha4mysql-manager:/masterha/scripts/
# docker cp ./script/change_virtual_ip_slave_to_master.sh mha4mysql-manager:/masterha/scripts/

