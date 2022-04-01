#!/usr/bin/env bash

### Brace expansion
# Brace expansion is a feature of bash that allows you to expand a variable into multiple words.
echo beg{i,a,u}n

# Also, you can use brace expansion to create an array
# Syntax: {start..end..step}
echo {0..9}
echo {a..z}
echo {00..10..2}

### Command substitution
# Command substitution is a feature of bash that allows you to execute a command and use the output as a variable.
# Syntax: variable=$(command) or variable=`command`
now=$(date +%T)
echo "Now: $now"
# Or
this_moment=`date +%T`
echo "This moment: $this_moment"

### Arithmetic expansion
# Arithmetic expansion is a feature of bash that allows you to perform arithmetic operations on variables.
# Syntax: $(( expression ))
echo "10 + 5 = $(( 10+5 ))"
echo "6 + (10 * 2) / 5 = $(( 6 + (10 * 2) / 5 ))"

### Challenge
result=$(( $1 * ($2 + $3) ))
echo project-$result/{src,dest,test}/{index,util}.js

### Extra
# Try `mkdir -p project/{src,test}/`
# Then `touch project/{src,test}/{index,util}.js`
# These commands will create a project folder with a src and test folder inside, and two files inside each folder.