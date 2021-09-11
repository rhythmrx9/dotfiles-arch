#! /usr/bin/bash

# menus

select character in Kakashi Zoro Genos SOSonic 
do 
	if [[ $character == "" ]]
	then
		echo "Please input valid option"
	else
		echo "You have selected $character"
		break
	fi	
done


# waiting for input

echo "press any key to continue"

while [ true ]
do
	read -t 3 -n 1 # t for waiting time (3s here) n for number of characters accepted
	# loop reads for 3s then executes following

	# IFS="" is used to specify delimeter
	# -p read prompt text
	# -s security purpose (for entering passwords)

	if [ $? = 0 ]
	then 
		echo "script terminated"
		exit;
	else
		echo "waiting for input..."
	fi
done


# debugging
# use set -x ; set +x; before and after the code to be debugged, respectively


