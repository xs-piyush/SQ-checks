#!/usr/bin/env bash

a=1
echo "Enter the second number of your choice:"
read $1
sum=$(($a + $1))
echo "The sum is: $sum"
