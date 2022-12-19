#!/bin/bash

docker build -f gpdb7_Dockerfile -t gpdb7:centos7 .
docker run -ti -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 22:22 -p 5432:5432 -h mdw gpdb7:centos7