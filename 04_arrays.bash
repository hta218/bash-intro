#!/usr/bin/env bash

### Array declaration
# In bash you create an array by simply assigning a value to an index in the array variable:
planets[0]="Mercury"
planets[1]="Venus"
planets[2]="Earth"
echo "The 3 first planets in the solar system are: ${planets[*]}"

# Or array can be created by using the array() function:
planets=(Mercury Venus Earth Mars Jupiter Saturn)
echo "The 6 first planets in the solar system are: ${planets[@]}"

# Slice an array with array[*]:start:length
echo "The 3 planets start from the 2nd one are: ${planets[*]:1:3}"

# Add elements to an array:
planets=(${planets[*]} Uranus Neptune Pluto)
echo "All planets in the solar system are: ${planets[*]}"

# Delete an element from an array with `unset`:
unset planets[0]
echo "All planets in the solar system except the first one are: ${planets[*]}"