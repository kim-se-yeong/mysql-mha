#!/bin/bash
## Fail-Over VIP Change

STER=`cat /etc/hosts | grep $1 | awk '{print $2}'`
V_EXIST_VIP_CHK=`ping -c 1 -W 1 172.30.0.20 | grep "packet loss" | awk '{print $6}'`
V_VIP_IP=`cat /etc/hosts | grep 172.30.0.20 | awk '{print $1}'`

if [[ "$V_EXIST_VIP_CH" = "0%" ]]
then

echo "VIP IS Alive, VIP Relocate $V_NEW_MASTER "
/bin/ssh 172.30.0.20 /bin/sudo /sbin/ifconfig eth0:0 down &

ssh $V_NEW_MASTER /bin/sudo /sbin/ifconfig eth0:0 $V_VIP_IP
ssh $V_NEW_MASTER /sbin/arping -c 5 -D -I eth0 -s $V_VIP_IP $V_VIP_IP

VIP_NOHUP_PS=`ps -ef| grep "ifconfig eth0:0" | grep ssh | grep -v grep | awk '{print $2}'` && kill -9 $VIP_NOHUP_PS

elif [[ "$V_EXIST_VIP_CHK" = "100%" ]]
then

echo "VIP IS dead, VIP Relocate $V_NEW_MASTER "
/bin/ssh $V_NEW_MASTER /bin/sudo /sbin/ifconfig eth0:0 $V_VIP_IP
/bin/ssh $V_NEW_MASTER /sbin/arping -c 5 -D -I eth0 -s $V_VIP_IP $V_VIP_IP

fi