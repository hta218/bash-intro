#!/usr/bin/env bash

### for loop
echo "for loop"
for arg in "foo" "bar" "baz"; do
  echo "arg: $arg"
done

# Or
for i in {1..5}; do
  echo "i: $i"
done

# Or: move all *.txt file inside folder "text"
# for file in *.txt; do
#   mv "$file" "text/"
# done

## while loop
echo "while loop"
x=0
while [[ $x -lt 10 ]]; do
  echo $(( $x * $x ))
  x=$(( $x + 1 ))
done

### until loop
echo "until loop"
x=10
until [[ x -lt 5 ]]; do
  echo $(( $x * $x ))
  x=`expr $x - 1`
done

### Loop control with `break` and `continue`
echo "Loop control with continue"
for i in {1..20}; do
  if [[ ! $(( $i % 5 )) -eq 0 ]]; then
    continue
  fi
  echo $i
done

echo "Loop control with break"
for i in {1..20}; do
  if [[ $i == 10 ]]; then
    break
  fi
  echo $i
done

### Select loop
echo "select loop"
# The PS3 variable is used to set the prompt string. 
# Or else, it will be "#? " (try comment the PS3 line to see)
PS3="Choose your favorite position in a football team: "
select position in "Goalkeeper" "Defender" "Midfielder" "Forward"
do
  case $position in
    "Goalkeeper")
      echo "Catch the ball with your hand!"
      ;;
    "Defender")
      echo "Protect the goal!"
      ;;
    "Midfielder")
      echo "Control the match!"
      ;;
    "Forward")
      echo "Score as many goal as possible!"
      ;;
  esac
  break # avoid infinite loop
done

### Challenge
c=$1
while [[ $c -lt $2 ]]; do
  [[ $(( $c % 2 )) == 0 ]] && echo $c
  c=$(( $c + 1 ))
done
