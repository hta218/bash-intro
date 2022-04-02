#!/usr/bin/env bash

### Challenge
$1 || echo "First parameter is false."

$2 && pwd

$3 && ls || echo "Third parameter is false."
