#!/bin/bash

a=10
b=twenty
sum=$(($a+$b))

echo "sum is: $sum"

#array

FRUITS=("Apple" "Banana" "Pomo")
echo "fruits are: ${FRUITS[@]}"
echo "first fruit is: ${FRUITS[0]}"
echo "second fruit is: ${FRUITS[1]}"
echo "third fruit is: ${FRUITS[2]}" 