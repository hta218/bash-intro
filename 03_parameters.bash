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