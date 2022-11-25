# gpdb7-docker

Dockerfile for gpdb7 env. 

This is a Docker image file to deploy an single node open source Greenplum Database for test purpose.

This image will download the latest Greenplum source code and compiling the binary, which runs on both x86 and arm (Including Mac M1) chips. 
The Greenplum version will be deployed is "Greenplum Database 7.0.0-alpha.0 build". 


Deploy steps:

1. Install Docker Desktop
2. Download this repo
3. execute run.sh

```
unzip gpdb7-docker.zip
cd gpdb7-docker
./run.sh
```

To use:

1. Connect to container from hosting machine:
```
ssh gpadmin@localhost (Password：Hashdata@123)
```
OR
```
docker exec -it <container-id> /bin/bash
```
If success, it will be like this:
```
[gpadmin@mdw ~]$
```
2. Log in database within the docker:
```
[root@mdw /]# su - gpadmin
Last login: Wed Nov 16 17:04:08 CST 2022 on pts/1
[gpadmin@mdw ~]$ psql
psql (12beta2)
Type "help" for help.

gpadmin=# select version();
                                                                                            version

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------
 PostgreSQL 12beta2 (Greenplum Database 7.0.0-alpha.0 build dev) on aarch64-unknown-linux-gnu, compiled by gcc (GCC) 7.3.1 20180303 (Red Hat 7.3.1-5), 64-bit compiled on Nov 16 202
2 16:57:30
(1 row)

gpadmin=#
```

Now you got a Greenplum database for testing, enjoy!