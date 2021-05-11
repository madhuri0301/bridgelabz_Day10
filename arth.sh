#! /bin/bash

echo "Welcome to the arithmatic"

read -p "Enter the First Number :" a
read -p "Enter the Second Number :" b
read -p "Enter the Third Number :" c

sum=$(echo $a $b $c | awk '{print $1+$2*$3}')

sum2=$(echo $a $b $c | awk '{print $1*$2+$3}')

sum3=$(echo $a $b $c | awk '{print $1+$2/$3}')

sum4=$(echo $a $b $c | awk '{print $1%$2+$3}')

echo $sum $sum2 $sum3 $sum4
