#! /bin/bash

#Constants
IS_PRESENT=1
EMP_RATE_PER_HR=20

#Variables
empCheck=$(( RANDOM%2 ))

#Selection
if [ $empCheck -eq $IS_PRESENT ]
then
      empHrs=8
else
      empHrs=0
fi
salary=$(( EMP_RATE_PER_HR * empHrs ))


