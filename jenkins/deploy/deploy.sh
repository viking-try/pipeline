echo $BUILD_NUMBER > /tmp/.authfile
echo jar-exe >> /tmp/.authfile
echo $PASSD >> /tmp/.authfile
chmod 600 $WORKSPACE/file.pem 
scp -i $SSH_KEY  /tmp/.authfile ec2-user@$RMIP:/tmp/
scp -i $SSH_KEY -o StrictHostKeyChecking=no $WORKSPACE/jenkins/deploy/varset.sh $WORKSPACE/jenkins/deploy/docker-compose.yml  ec2-user@$RMIP:
ssh  -i $SSH_KEY ec2-user@$RMIP " sh ~/varset.sh "
