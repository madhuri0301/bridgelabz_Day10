#! /bin/bash

declare -A dict
echo "Welcome to the arithmatic"

read -p "Enter the First Number :" a
read -p "Enter the Second Number :" b
read -p "Enter the Third Number :" c

sum=$(echo $a $b $c | awk '{print $1+$2*$3}')
dict['sum']=$sum

sum2=$(echo $a $b $c | awk '{print $1*$2+$3}')
dict['sum2']=$sum2

sum3=$(echo $a $b $c | awk '{print $1+$2/$3}')
dict['sum3']=$sum3

sum4=$(echo $a $b $c | awk '{print $1%$2+$3}')
dict['sum4']=$sum4

echo "Dictionary Value are :${dict[@]}"

arr=(${dict[@]})
echo "Value Of Array Are :${arr[@]}"
