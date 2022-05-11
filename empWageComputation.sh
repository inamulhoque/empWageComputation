#!/bin/bash -x

isPartTime=1
isFullTime=2
totalSalary=0
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

for (( day=1; day<=$NUM_WORKING_DAYS; day++ ))
do
	rand=$(($RANDOM%3))
	case $rand in
		$isFullTime) empHrs=8;;
		$isPartTime) empHrs=4;;
		*) empHrs=0;;
	esac

salary=$(($empHrs*$EMP_RATE_PER_HR))
totalSalary=$(($totalSalary+$salary))
echo "Salary: $totalSalary"
done
