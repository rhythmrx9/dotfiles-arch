#! /usr/bin/bash

echo "enter string:"
read st1

echo "enter another string:"
read st2

if [ $st1 == $st2 ] # \<  if string st1 is smaller than st2
then 
	echo "strings match"
else
	echo "string dont match"
fi


echo ${st1^} # st1 in lowercase
echo ${st1^^} # st1 in uppercase

# ${st1^1} to capitalize first letter 
