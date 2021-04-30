#! /bin/bash

#Constants
IS_PRESENT=1

#Variables
empCheck=$(( RANDOM%2 ))

#Selection
if [ $empCheck -eq $IS_PRESENT ]
then
    echo "Employee is present"
else
    echo "Employee is absent"
fi

