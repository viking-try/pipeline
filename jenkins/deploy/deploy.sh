echo $BUILD_NUMBER > /tmp/.authfile
echo jar-exe >> /tmp/.authfile
echo $PASSD >> /tmp/.authfile
chmod 600 $WORKSPACE/file.pem 
scp -i file.pem -o StrictHostKeyChecking=no /tmp/.authfile ec2-user@$RMIP:/tmp/.authfile
scp -i file.pem -o StrictHostKeyChecking=no $WORKSPACE/jenkins/deploy/varset.sh $WORKSPACE/jenkins/deploy/docker-compose.yml  ec2-user@$RMIP:
ssh  -i file.pem ec2-user@35.170.242.182 " sh ~/varset.sh "
