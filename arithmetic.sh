#!/bin/bash -x
declare -A result
read -p "Enter First No"  a
read -p "Enter Second No"  b
read -p "Enter Third No"  c
w=$(($a+$b*$c))
x=$(($a*$b+$c))
y=$(($c+$a/$b))
z=$(($a%$b+$c))
result[W]=$w
result[X]=$x
result[Y]=$y
result[Z]=$z
