#########################################################################
# File Name: kafka.sh
# Author: 
# Desc:
# Created Time: Thu Apr 16 14:25:04 2020
#########################################################################
#!/bin/bash
docker run  -d --name kafka -p 9092:9092 -e KAFKA_BROKER_ID=0 -e KAFKA_ZOOKEEPER_CONNECT=127.0.0.1:2181 -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://127.0.0.1:9092 -e KAFKA_LISTENERS=PLAINTEXT://0.0.0.0:9092 -t wurstmeister/kafka
