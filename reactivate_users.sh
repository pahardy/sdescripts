#!/bin/bash

creds=

inputfile=affected_user_ids.txt
outfile=reactivation.log

while read -r line; do
        echo $line >> $outfile
	curl -s -k -X PATCH https://.sdelements.com/api/v2/users/$line/ -H "Authorization: Basic $creds" -H "Content-Type: application/json" -d '{"is_active": "true"}'
       	echo "User $line reactivated" >> $outfile
        sleep 1
done <$inputfile
