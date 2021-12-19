#!/bin/bash

current_branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')

if [ 'main' = ${current_branch} ]
then
  echo "ERROR: Cannot push to main. Switch to a different branch and create a pull request."
  exit 1 # push will not execute
else
  exit 0 # push will execute
fi
