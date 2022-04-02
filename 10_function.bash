#!/usr/bin/env bash

# # Function must be defined before we can use it
# my_func () {
#   echo "Hello, it's $USER, this is my 1st bash function! This function name is $FUNCNAME"
# }

# my_func

# # Function parameters
# greeting () {
#   local foo="Foooo" # Local variables are only available in the function
#   bar="Bazzz"
#   if [[ $1 ]]; then
#     echo "Hello, $1"
#   else
#     echo "Hello, the unknown!"
#   fi
#   return 0
# }

# greeting "John"
# greeting

# echo "foo is: $foo"
# echo "baz is: $bar"

### Challenge
print() {
  i=$1
  level=0
  while [[ $i -lt $2 ]]; do
    if [[ $(($i % 2)) == 0 ]]; then
      level=$(( $level + 1 ))
      j=0
      while [[ $j -lt $level ]]; do
        echo -n " "
        j=$(( $j + 1 ))
      done
      echo "$i"
    fi
    i=$(( $i + 1 ))
  done
}

main() {
  echo $FUNCNAME
  print $1 $2
}

main $1 $2
