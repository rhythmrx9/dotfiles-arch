#! /usr/bin/bash


count=20

if [ $count -lt 10 ]
then 
	echo "condition is true"
else
	echo "condition is false"
fi



# if using single angle brackets for comparasion use double parenthesis
# (()) for arithmetic 

if (( $count < 10 ))
then 
	echo "true indeed"
elif (( $count >= 20 ))
then 
	echo "greater than 20"
else
	echo "false af"
fi


# using and/or

age=10

if [ $age -gt 12 ] && [ $age -lt 20 ] # c.a.d [ $age -gt 12 -a $age -lt 20 ] 
# -o for or statement
then
	echo "teenager"
elif [[ $age -gt 18 || $age -lt 40 ]] # double brackets can be used for && || 
then 
	echo "satisfied or statement"
else
	echo "else block"
fi 


# case statement 

exp=3

case $exp in
	1)
		echo exp is 1
		;;
	2)
		echo exp is 2
		;;
	3)
		echo exp is 3
		;;
	*)
		echo default statement
		;;
esac

# loops
# $() is "command substitution" : substitutes output of command in expression used in
# $(()) is used for integer arithematic
# command run in () is run in a subshell
# remember if?

number=1

# while
while [ $number -le 10 ]
do 
	echo "$number"
	number=$(( $number + 1 ))
done

# until
until [ $number -eq 0 ]
do
	echo "$number"
	number=$(( number - 1 )) # $number is not manadatory 
done

echo "for loop"
# for

# i for values from left to right
for i in 1 2 2
do 
	echo $i
done

# for range
#{starting..ending..increment} ; default increment is one 
for i in {1..10} 1{20..30}  # {1..10} is 1 to 10 ; more than one can be used along with other number as used here
do 
	echo $i
done

# traditional for 
for (( i=0; i<5; i++ ))
do 
	echo $i
done

# break will break the loop
# continue will skip to the next iteration of loop


# input 
# $x is xth input
echo $0 $1 $2 $3

args=("$@") #array of all arguments

echo ${args[0]}
echo $@ # all inputs
echo $# # length of inputs


# array

arr=('first element' 'second element' 'third element')

echo "${arr[@]}" # all the elements in arr
echo "${arr[0]}" # first element
echo "${!arr[@]}" # index of all elements
echo "${#arr[@]}" # number of elements

unset arr[2] # remove element at index 2
arr[2]="another third element"


# function

function name()
{
	echo "my name is something"
}

# calling function
name

# with args
function say()
{
	echo "$@"
}

say namaste world

string=$( say trying this )
echo $string


# file handling
# if [[ -d $dirname ]] true if directory exists
# if [[ -f $filename ]] true if file exists
# while read line .... done < $filename
