#!/bin/bash
a=8
echo " $(($a +1))"

let a=a+10
echo "$a"

a=`expr $a + 100`
echo "$a"

variable="monday"

case $variable in
  sunday)
      echo " sunday"
      ;;
  monday)
      echo "today is $variable"
    ;;
  wednesday)
      echo " not monday"
    ;;
  *)
    echo " no match"
    ;;
esac


for (( ; ; )); do 
echo "This is an infinite loop" 
done