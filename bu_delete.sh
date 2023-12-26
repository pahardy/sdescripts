#!/bin/bash

#Credentials, can place a Token or base64 encoded credentials here
creds=""

#BU ID can go here
buid=2

#Get the relevant data, which will include those SDE applications to delete
curl -s -k -X GET https://localhost/api/v2/business-units/$buid/?include=applications -H "Authorization: Basic $creds" | jq > bu_info.json 

#Determine how many applications there are
app_count=$(less bu_info.json | jq '.applications' | grep -i id | wc -l) 
app_increment=$((app_count-1))

#Delete the applications
for i in $(seq 0 $app_increment)
do
	app_to_delete=$(less bu_info.json | jq '.applications['$i'].id')
	echo "Now deleting app ID: $app_to_delete"
	curl -s -k -X DELETE https://localhost/api/v2/applications/$app_to_delete/ -H "Authorization: Basic $creds"
done
