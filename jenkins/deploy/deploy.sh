echo $BUILD_NUMBER > /tmp/.authfile
echo jar-exe >> /tmp/.authfile
echo $PASSD >> /tmp/.authfile
chmod 600 $WORKSPACE/file.pem 
scp -i file.pem /tmp/.authfile ec2-user@35.170.242.182:/tmp/.authfile
scp -i file.pem $WORKSPACE/jenkins/deploy/varset.sh $WORKSPACE/jenkins/deploy/docker-compose.yml  ec2-user@35.170.242.182:
ssh  -i file.pem ec2-user@35.170.242.182 " sh ~/varset.sh "
