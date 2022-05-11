#!/bin/bash -x

isPartTime=1
isFullTime=2
totalSalary=0
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORKING_HR_MONTH=100

totalEmpHr=0
totalWorkingDay=0

while [[ $totalEmpHr -lt $MAX_WORKING_HR_MONTH && $totalWorkingDay -lt $MAX_WORKING_DAYS ]]
do
	rand=$(($RANDOM%3))
	case $rand in
		$isFullTime) empHrs=8;;
		$isPartTime) empHrs=4;;
		*) empHrs=0;;
	esac
	totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalSalary=$(($EMP_RATE_PER_HR*$totalEmpHr))
daySalary=$(($EMP_RATE_PER_HR*$empHrs))
echo "Salary of the Employee a month is: $totalSalary"
echo "Salary per day: $daySalary"
