#!/bin/bash -x

function calculateWorkingHour() {
case $1 in
0) workingHour=0;;
1) workingHour=8;;
2) workingHour=4;;
esac
echo "$workingHour"
}
perHourSalary=20
totalSalary=0
totalWorkingHour=0
day=1

while [[ $day -le 20 && $totalWorkingHour -lt 100 ]]
do
workingHour=$(calculateWorkingHour $((RANDOM%3)))
totalWorkingHour=$(($totalWorkingHour + $workingHour))
done
echo "Total Working Hour: $totalWorkingHour hours"
calculateWorkingHour
