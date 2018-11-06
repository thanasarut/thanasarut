#!/bin/bash

if [ $# -eq 0 ]; then
  echo "usage: ${0##*/} [environment : int|marriott] [resource(optional) : appserver|serviceplatform(default)]"
  exit 1
fi
if [ $# -eq 1 ] && [ $1 != "int" ] && [ $1 != "marriott" ]; then
  echo "usage: ${0##*/} [environment : int|marriott] [resource(optional) : appserver|serviceplatform(default)]"
  exit 2
fi
SCRIPT_ENV=$1
SCRIPT_RESOURCE=serviceplatform #default value
if [ $# -eq 2 ]; then
  if [ $2 != "appserver" ] && [ $2 != "marriott" ]; then
    echo "usage: ${0##*/} [environment : int|marriott] [resource(optional) : appserver|serviceplatform(default)]"
    exit 3
  else
    SCRIPT_RESOURCE=$2
  fi
fi
  
scp target/*.jar root@${SCRIPT_ENV}.${SCRIPT_RESOURCE}:/root/vick-temp/

