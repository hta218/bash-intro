#!/usr/bin/env bash

# set -x
# for i in {1..3}; do
#   echo $i
# done
# set +x

### Challenge
set -vn
echo $@
touch $@
mkdir ./folder
mv file* ./folder
cd ./folder
ls
set +vn
