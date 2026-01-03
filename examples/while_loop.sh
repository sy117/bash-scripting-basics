#! /bin/bash

num=1
while [ $num -le 10 ]
do
    echo "$num"
    num=$(($num + 1))
    sleep 1.0
done