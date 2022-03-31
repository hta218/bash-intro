#!/usr/bin/env bash

### Positional parameters
# Positional parameters are the parameters that are passed to a script.
# $0 --> The name of the script.
# $1 .. $9 --> The 1st through 9th positional parameters.
# $# --> The number of positional parameters.
# $* or $@ --> All positional parameters.
# $FUNCNAME --> The name of the function.
echo "Positional parameters: (Try typing \`bash ./03_parameters.bash foo bar\`)"
echo "The script name is \"$0\""
echo "The script has $# positional parameters"
echo "All positional parameters are \"$*\""
echo "The 1st positional parameter is \"$1\""
echo "The 2nd positional parameter is \"$2\""

### Default values
THIRD_PARAM=$3
THIRD_PARAM=${THIRD_PARAM:-'This is the default value of the 3rd param if it is not existed!'}
echo "The 3rd positional parameter is \"$THIRD_PARAM\""

### Challenge
# echo "1: $1"
# echo "3: $3"
# echo "5: $5"