#!/usr/bin/env bash

# Declare a variable with = sign
foo="foooo"
echo "foo is \"$foo\""

# Delete the variable
unset foo
echo "After \`unset foo\`. foo is \"$foo\""

# Variable can be used inside strings.
# Inside double quotes, variables are expanded.
# Inside sing quotes, they're are not.
bar="bazz"
echo "bar is \"$bar\""
echo 'bar is "$bar"'