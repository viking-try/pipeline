#!/bin/bash
#copy jar

cp -f java-app/target/*.jar jenkins/build/app.jar
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "*********Building Jar Image **********"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo " "
cd /var/jenkins_home/workspace/pipeline-mvn-doc/jenkins/build/ && docker-compose build --no-cache
