#!/bin/bash
WORKSP=/root/docker-stof/jenkins_home/workspace/pipeline-mvn-doc
echo "***********$(date)*****************"
echo "***************Building JAR********************"
docker run --rm  -v $WORKSP/java-app:/app -v /root/.m2:/root/.m2  -w /app maven:3-alpine "$@"

