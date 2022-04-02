#!/usr/bin/env bash

# Function must be defined before we can use it
my_func () {
  echo "Hello, it's $USER, this is my 1st bash function! This function name is $FUNCNAME"
}

my_func