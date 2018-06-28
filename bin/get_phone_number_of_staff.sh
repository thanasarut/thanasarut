#!/bin/bash

if [ $# -ne 1 ]; then
  echo "usage: ./get_phone_number_of_staff.sh [nickname]"
  exit 1
fi
 
echo -n $1": "
ssh root@pbx-bkk1.corp.sunseries.travel './get_phone_number_for_user.sh $(./get_all_users.sh | grep '$1')' 2>/dev/null
