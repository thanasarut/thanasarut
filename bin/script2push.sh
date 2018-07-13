#!/bin/bash

for FILE in `cat focus_file2.txt`; do
  extract_incoming_from_rate_push.sh $FILE | sed 's/InvTypeCode="[a-z0-9=-]*"/InvTypeCode="suns00002-0000001"/' | sed 's/00055/00002/' > send.xml
  curl -X POST --header "Content-Type:application/xml" -d @send.xml https://rq-int.sunseries.travel/adapter/fastbooking/push   
  sleep 1
done
