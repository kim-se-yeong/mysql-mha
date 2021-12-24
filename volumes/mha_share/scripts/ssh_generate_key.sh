ssh-keygen -t rsa -P "" -f /root/.ssh/id_rsa
mkdir -p $MHA_SHARE_SSHKEYS_PATH
cp /root/.ssh/id_rsa.pub "$MHA_SHARE_SSHKEYS_PATH/id_rsa_$CONTAINER_NAME.pub"