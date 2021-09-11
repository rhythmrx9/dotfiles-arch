#! /usr/bin/bash

# stdin input

while read line
do 
	echo "$line" . 
done < "${1:-/dev/stdin}"

# ${} is used for parameter substitution
