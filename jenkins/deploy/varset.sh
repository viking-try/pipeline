export IMGTG=$(sed -n '1p' /tmp/.authfile)
export IMGNM=$(sed -n '2p' /tmp/.authfile)
export PASSD=$(sed -n '3p' /tmp/.authfile)
echo "*************************************"
echo "**********$(date)*******************"
echo "********log in to dok***************"
echo "*************************************"
docker login -u vikingtry -p $PASSD
cd ~/ && docker-compose up -d 
