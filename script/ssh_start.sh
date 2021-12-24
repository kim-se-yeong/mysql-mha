# docker exec -it mha_node0 /bin/bash service ssh start
# docker exec -it mha_node1 /bin/bash service ssh start
docker exec -it mha4mysql-manager /bin/bash service ssh start
docker exec -it mha4mysql-master /bin/bash service ssh start
docker exec -it mha4mysql-slave-01 /bin/bash service ssh start
docker exec -it mha4mysql-slave-02 /bin/bash service ssh start
