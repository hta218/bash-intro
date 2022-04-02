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
  [[ $1 -ge $2 ]] && return
  i=$1
  if [[ $(($i % 2)) == 0 ]]; then
    indent=$(($3 + 1))
    for ((j = 0; j < $indent; j++)); do
      echo -n " "
    done
    echo "$i"
  fi

  print $(($i + 1)) $2 indent
}

main() {
  echo $FUNCNAME
  print $1 $2 0
}

main $1 $2
