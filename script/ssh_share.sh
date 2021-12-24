# docker exec -it mha_node0 /bin/bash /root/mha_share/scripts/ssh_generate_key.sh
# docker exec -it mha_node1 /bin/bash /root/mha_share/scripts/ssh_generate_key.sh
docker exec -it mha4mysql-master /bin/bash /root/mha_share/scripts/ssh_generate_key.sh
docker exec -it mha4mysql-manager /bin/bash /root/mha_share/scripts/ssh_generate_key.sh
docker exec -it mha4mysql-slave-01 /bin/bash /root/mha_share/scripts/ssh_generate_key.sh
docker exec -it mha4mysql-slave-02 /bin/bash /root/mha_share/scripts/ssh_generate_key.sh

# docker exec -it mha_node0 /bin/bash /root/mha_share/scripts/ssh_auth_keys.sh
# docker exec -it mha_node1 /bin/bash /root/mha_share/scripts/ssh_auth_keys.sh
docker exec -it mha4mysql-master /bin/bash /root/mha_share/scripts/ssh_auth_keys.sh
docker exec -it mha4mysql-manager /bin/bash /root/mha_share/scripts/ssh_auth_keys.sh
docker exec -it mha4mysql-slave-01 /bin/bash /root/mha_share/scripts/ssh_auth_keys.sh
docker exec -it mha4mysql-slave-02 /bin/bash /root/mha_share/scripts/ssh_auth_keys.sh