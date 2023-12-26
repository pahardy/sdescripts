#!/bin/bash

#insert the base64 encoded credentials for API access, alternatively create a function to build it
creds=

for i in {1..1000}
                do
                        curl -s -k -X PATCH https://10.0.0.2/api/v2/projects/$i/ -H "Authorization: Token $creds" -H "Content-Type: application/json" -d '{"name":"project'$i'_new4"}'

done
