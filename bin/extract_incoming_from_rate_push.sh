#!/bin/bash

if [ $# -ne 1 ]; then
  echo "usage: ./{program}.sh [incoming_file.log]"
  exit 1
fi

awk '/<<</,/<\/soapenv:Envelope>/' $1 | awk '{if (NR!=1) {print}}'
