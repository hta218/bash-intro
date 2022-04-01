#!/usr/bin/env bash

### Array declaration
# In bash you create an array by simply assigning a value to an index in the array variable:
planets[0]="Mercury"
planets[1]="Venus"
planets[2]="Earth"
echo ${planets[*]}

# Or array can be created by using the array() function:
planets=(Mercury Venus Earth)
echo ${planets[@]}