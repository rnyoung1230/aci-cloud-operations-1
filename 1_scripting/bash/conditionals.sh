#!/bin/bash

# Basic If example
num=6

if [ $num -eq 5 ]
then
   echo "Number is 5"
else
   echo "Number is not 5"
fi

# If-else example
num=2

if [ $num -ge 1 ] && [ $num -le 10 ]
then
   echo "Number is between 1 and 10"
else
   echo "Number is not between 1 and 10"
fi

# Else if (elif)  example
num=8

if [ $num -eq 5 ]
then
    echo "Number is 5."
elif [ $num -eq 10 ]
then 
    echo "Number is 10"
else
    echo "Number is neither 5 nor 10."
fi
