#!/bin/bash -x
declare -A result
read -p "Enter First No"  a
read -p "Enter Second No"  b
read -p "Enter Third No"  c
w=$(($a+$b*$c))
x=$(($a*$b+$c))
y=$(($c+$a/$b))
z=$(($a%$b+$c))
result[1]=$w
result[2]=$x
result[3]=$y
result[4]=$z
count=0

while [[ $count -ne ${#result[@]} ]]
do
   array[$count]=${result[$(( count+1 ))]}
   count=$(( count+1 ))
done
echo ${array[@]}


for (( i=0; i<3; i++ ))
do
   for (( j=i+1; j<4; j++ ))
   do
      if [[ ${array[i]} -lt ${array[j]} ]]
     then
           t=${array[i]}
           array[i]=${array[j]}
           array[j]=$t
      fi
   done
done
echo -e "\nSorted Numbers in Descending Order:"
  echo ${array[@]}



for (( i=0; i<3; i++ ))
do
   for (( j=i+1; j<4; j++ ))
   do
      if [[ ${array[i]} -gt ${array[j]} ]]
     then
           t=${array[i]}
           array[i]=${array[j]}
           array[j]=$t
      fi
   done
done
echo -e "\nSorted Numbers in Ascending Order:"
  echo ${array[@]}


