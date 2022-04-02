#!/usr/bin/env bash

### for loop
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