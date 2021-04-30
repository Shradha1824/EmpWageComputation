#! /bin/bash


#Constants
IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20
NO_OF_WORKING_DAYS=5
MAX_WORKING_HOURS=20
#varials
totalworkingHours=0
totalworkingDays=0
#whileloop
#< -----> -lt / <= ----- le / > -gt / >= -ge / === ----> -eq
function getWorkHours(){
          local empCheck=$1
          local empHrs=0
           case $empCheck in
                 $IS_PRESENT_FULL_TIME) empHrs=8 ;;
                 $IS_PRESENT_HALF_TIME) empHrs=4 ;;
                 *) empHrs=0 ;;
         esac
         echo $empHrs
}
while [ $totalworkingDays -lt $NO_OF_WORKING_DAYS ] && [ $totalworkingHours -lt $MAX_WORKING_HOURS ]

do
       empCheck=$(( RANDOM%3 ))
       totalworkingDays=$(( $totalworkingDays + 1 ))
       empHrs="$( getWorkHours $empCheck )"
       totalworkingHours=$(( $totalworkingHours + $empHrs ))

done
salary=$(( $EMP_RATE_PER_HR * $totalworkingHours ))
#salary=$(( EMP_RATE_PER_HR * empHrs ))








