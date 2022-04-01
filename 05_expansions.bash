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