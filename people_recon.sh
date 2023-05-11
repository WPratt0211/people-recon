#!/bin/bash
clear
echo -n "Please Enter Your First Name: "
read firstname
if [ -z $firstname ];then
	echo "You did not enter a name."
	exit
fi
echo $firstname
echo -n "Please Enter Your Last Name: "
read lastname
if [ -z $lastname ];then
	echo "You did not enter a last name"
	exit
fi
echo "Starting recon on $firstname $lastname"
read -p "Press <enter> to continue."
firefox http://www.peekyou.com/$firstname"_"$lastname/ &
sleep 1
firefox http://www.zabasearch.com/people/$firstname+$lastname/ &
sleep 1
firefox http://www.spokeo.com/search?q=$firstname+$lastname/ &
sleep 1
firefox http://webmii.com/people?n=%22$firstname%20$lastname%22 &
