#!/bin/bash -x

isPartTime=0
isFullTime=1
EMP_RATE_PER_HR=20

rand=$(($RANDOM%3))
case $rand in
	$isFullTime) empHrs=8;;
	$isPartTime) empHrs=4;;
	*) empHrs=0;;
esac

salary=$(($empHrs*$EMP_RATE_PER_HR))
echo "$salary"


