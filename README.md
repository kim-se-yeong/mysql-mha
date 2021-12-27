# mysql-mha
### 구성  
|Host|IP|Note|
|---|---|---|
|Manager|172.30.0.10|
|Master|172.30.0.11|VIP - 172.30.0.20|
|Slave-01|172.30.0.12|
|Slave-02|172.30.0.13|  


# how to use
1. 도커 컨테이너 띄우기  
```$ docker-compose up -d```
2. ssh 시작  
```$ ./script/ssh_start.sh```
3. ssh key 생성  
```$ ./script/ssh_share.sh```
4. mha ssh 확인(위에서 생성한 key로 서로 접속 가능 여부 확인)  
```$ ./script/mha_check_ssh.sh```
5. mha 관련 파일 복사  
```$ ./script/mha_file_set.sh```
6. mysql 복제 권한 생성  
```$ ./script/mysql_set_mbs.sh```
7. mha 복제 확인  
```$ ./script/mha_check_repl.sh```
8. mha manager 시작  
```$ ./script/mha_start_manager.sh```
9. master 서버 vip 생성  
```$ docker exec -it master bash```  
```$ ifconfig eth0:0 172.30.0.20```

# to do
* Master 중지 시킨 후, Slave가 Master로 승격하도록 구성

# reference
https://hoing.io/archives/9812  
https://github.com/prontera/docker-mysql-mha

