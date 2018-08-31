#!/bin/bash

if [ $# -ne 1 ]; then
  echo "usage: ${0##*/} [filepath]"
  exit 1
fi

scp $1 root@int.serviceplatform:/home/vick.thanasarut@corp.sunseries.travel
