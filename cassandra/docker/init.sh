#!/bin/bash


# 7000: intra-node communication
# 7001: TLS intra-node communication
# 7199: JMX
# 9042: CQL
# 9160: thrift service
# EXPOSE 7000 7001 7199 9042 9160

docker run --name cassandra \
-p 7000:7000 \
-p 7001:7001 \
-p 7199:7199 \
-p 9042:9042 \
-p 9160:9160 \
-d cassandra:latest

docker rm -f cassandra