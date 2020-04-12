#! /bin/bash
#print this line 
echo "Running the Build Sprict"
echo "I am $HOSTNAME ."
echo "the Time is $(date +%Y-%m-%d_%H-%M-%S)"
echo "the loged in user is $USER "

server=$HOSTNAME
name=$USER
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
DIR=$(pwd)
branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')


sed  "s/{SERVER_NAME}/$server/g" web/indx.txt  |sed  "s/{USER}/$name/g" >indx.txt
sed -i "s/{TIMESTAMP}/$timestamp/g" indx.txt
sed -i "s/{GIT_BRANCH}/$branch/g" indx.txt
sed -i "s/{GIT_REPO}/$GIT_REPO/g" indx.txt
sed -i "s/{AZURE_VARIABLE}/$AZURE_VARIABLE/g" indx.txt

sed  "s~{PWD}~$DIR~g" indx.txt>web/index.html