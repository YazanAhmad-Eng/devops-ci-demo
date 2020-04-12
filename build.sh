#! /bin/bash
#print this line 
echo "Running the Build Sprict"
echo "I am $HOSTNAME ."
echo "the Time is $(date +%Y-%m-%d_%H-%M-%S)"
echo "the loged in user is $USER "

server=$HOSTNAME
name=$USER
timestamp=$(date +%Y-%m-%d_%H-%M-%S)


sed  "s/{SERVER_NAME}/$server/g" web/indx.txt  |sed  "s/{USER}/$name/g" >indx.txt
sed  "s/{TIMESTAMP}/$timestamp/g" indx.txt>web/index.html
