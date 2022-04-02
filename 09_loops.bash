#!/usr/bin/env bash

### for loop
echo "for loop"
for arg in "foo" "bar" "baz"; do
  echo "arg: $arg"
done

# Or
for i in {1..5}; do
  echo "i: $i"
done

# Or: move all *.txt file inside folder "text"
# for file in *.txt; do
#   mv "$file" "text/"
# done

### while loop
echo "while loop"
x=0
while [[ $x -lt 10 ]]; do
  echo $(( $x * $x ))
  x=`expr $x + 1`
done

### until loop
echo "until loop"
x=10
until [[ x -lt 5 ]]; do
  echo $(( $x * $x ))
  x=`expr $x - 1`
done