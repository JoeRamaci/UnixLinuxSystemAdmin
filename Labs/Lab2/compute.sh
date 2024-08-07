#!/bin/bash

printf "Enter an integer: "
read n1
printf "Enter another integer: "
read n2
printf "Enter an operation (add, sub, mul, div, exp): "
read op

# Keeping this in because i didn't know you could do this, and i will forget if i dont
# write it down XD
#for i in "add" "sub" "mul" "div" "exp"; do
# if [[ op != i ]]; then
#  echo "Please enter a valid operation"
# fi
#done

case $op in
 "add") echo "$n1 + $n2 = $(($n1 + $n2))" ;;
 "sub") echo "$n1 - $n2 = $(($n1 - $n2))" ;;
 "mul") echo "$n1 * $n2 = $(($n1 * $n2))" ;;
 "div") echo "$n1 / $n2 = $(($n1 / $n2))" ;;
 "exp") echo "$n1^$n2 = $(($n1 ** $n2))" ;;
 *) echo "Please enter a valid operation!"
esac

echo "done"
