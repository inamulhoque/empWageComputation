#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

rand=$(($RANDOM%2))
if [ $rand -eq 1 ]
then
echo "Employee is present"
else
echo "Employee is absent"
fi
