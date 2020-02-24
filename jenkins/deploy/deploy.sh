echo $BUILD_NUMBER > /tmp/.authfile
echo jar-exe >> /tmp/.authfile
echo $PASSD >> /tmp/.authfile
chmod 600 $WORKSPACE/file.pem 
scp -i $SSH_KEY  /tmp/.authfile ec2-user@172.31.90.210:/tmp/
scp -i $SSH_KEY  $WORKSPACE/jenkins/deploy/varset.sh $WORKSPACE/jenkins/deploy/docker-compose.yml  ec2-user@$172.31.90.210:
ssh  -i $SSH_KEY ec2-user@$RMIP "hostname; ll"
#ssh  -i $SSH_KEY ec2-user@$RMIP " sh ~/varset.sh "
