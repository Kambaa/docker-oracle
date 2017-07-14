#!/bin/bash

sudo docker run --name docker-oracle \
--shm-size=1g \
-p 1521:1521 -p 48080:8080 \
-e ORACLE_PWD=1234565 \
-v /$(pwd)/src:/u01/app/oracle/oradata \
oracle/database:11.2.0.2-xe
