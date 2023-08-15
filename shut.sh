#!/bin/bash

if [ -z "$1" ]; then
  echo 'Error: no argument supplied' >&2
  exit 1
fi

regex='^[0-9]+$'
if ! [[ "$1" =~ $regex ]]; then
   echo 'Error: argument must be a number' >&2
   exit 1
fi

minutes=$1
seconds=$((minutes * 60))

remainingSeconds=$seconds
while (( --remainingSeconds >= 0 )); do
  echo -e "Shutting down in \033[00;31m${remainingSeconds}\033[0m seconds..."
  sleep 1
done

shutdown -s -f -t 0
