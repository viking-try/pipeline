#!/bin/bash
#copy jar

cp -f java-app/target/*.jar jenkins/build/app.jar
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "*********Building Jar Image **********"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo " "
cd /jenkins/build/ && docker-compose build --no-cache
