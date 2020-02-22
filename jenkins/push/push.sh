#!/bin/bash
IMAGE=jar-exe
echo "******$(date)*****"
echo "**** TAGING IMG ****"
docker tag $IMAGE:$BUILD_NUMBER vikingtry/$IMAGE:$BUILD_NUMBER
echo "******docker hub log in*****"
docker login -u $USER -p $DKPASS
echo "**** Pushing IMG ***"
docker push vikingtry/$IMAGE:$BUILD_NUMBER

