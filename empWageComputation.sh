#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPartTime=0
isFullTime=1
EMP_RATE_PER_HR=20

rand=$(($RANDOM%2))
if [ $rand -eq 1 ]
then
	echo "Employee is present"
	check=$(($RANDOM%2))
	if [ $check -eq $isFullTime ]
	then
		empHrs=8
		salary=$(($empHrs*$EMP_RATE_PER_HR))
		echo "Full time employee salary: $salary"
	elif [ $check -eq $isPartTime ]
	then
		empHrs=4
		salary=$(($empHrs*$EMP_RATE_PER_HR))
		echo "Part time employee salary: $salary"
	fi
else
	echo "Employee is absent and salary: 0"
fi


