#!/bin/bash

#Task_5. Largest Number from Arguments
#Write a script that finds the largest number from a list of numbers provided as command-line arguments.
if [ "$#" -lt 1 ]; then
    echo "Please enter the numbers: $1 $2 $3 $4"
    exit 1
fi

largest=$1

for num in "$@"
do
    if [ "$num" -gt "$largest" ]; then
        largest=$num
    fi
done

echo "Largest number is: $largest"
