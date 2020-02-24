echo $BUILD_NUMBER > /tmp/.authfile
echo jar-exe >> /tmp/.authfile
echo $PASSD >> /tmp/.authfile 
scp -i $SSH_KEY -o StrictHostKeyChecking=no /tmp/.authfile ec2-user@$RMIP:/tmp/
scp -i $SSH_KEY -o StrictHostKeyChecking=no  $WORKSPACE/jenkins/deploy/varset.sh $WORKSPACE/jenkins/deploy/docker-compose.yml  ec2-user@$RMIP:
#ssh  -i $SSH_KEY ec2-user@$RMIP "hostname"
ssh  -i $SSH_KEY -o StrictHostKeyChecking=no  ec2-user@$RMIP " sh ~/varset.sh "
