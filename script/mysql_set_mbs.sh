
docker exec -it mha4mysql-master /bin/bash /root/mha_share/scripts/mysql_master.sh
docker exec -it mha4mysql-slave-01 /bin/bash /root/mha_share/scripts/mysql_master.sh
docker exec -it mha4mysql-slave-02 /bin/bash /root/mha_share/scripts/mysql_master.sh
docker exec -it mha4mysql-slave-01 /bin/bash /root/mha_share/scripts/mysql_slave.sh
docker exec -it mha4mysql-slave-02 /bin/bash /root/mha_share/scripts/mysql_slave.sh