#!/usr/bin/env bash

### Primary and combining expressions (https://github.com/denysdovhan/bash-handbook#primary-and-combining-expressions)
# [the difference between double and single square brackets in bash](http://serverfault.com/a/52050)

# if [ 1 -eq 2 ]; then
#   echo "true"
# else
#   echo "false"
# fi

# if [ `uname` == "Adam" ]; then
#   echo "Do not eat apple!"
# elif [ `uname` == "Eva" ]; then
#   echo "Do not take apple!"
# else 
#   echo "Eat apple! $(uname)"
# fi

### Challenge
if [[ $1 -ge 0 && $1 -lt 12 ]]; then
  echo "Good morning!"
elif [[ $1 -ge 12 && $1 -lt 18 ]]; then
  echo "Good afternoon!"
elif [[ $1 -ge 18 && $1 -le 24 ]]; then
  echo "Good evening!"
else
  echo "Error!"
fi

# Or
HOUR=$(date +%H)
if [[ $HOUR -lt 12 ]]; then
  echo "Good morning!"
elif [[ $HOUR -ge 12 && $HOUR -lt 18 ]]; then
  echo "Good afternoon!"
else
  echo "Good evening!"
fi
