#!/bin/bash

#insert the token or base64 encoded credentials for API access, alternatively create a function to build it
#Note you'll have to use 'Token' or 'Basic' in the API call depending on your choice here
creds=
sde_url=
total_users =

for i in {1..$total_users}
do
        j=$((i%10))
        k=$((j+1))
        curl -s -k -X POST https://$sde_url/api/v2/users/ -H "Authorization: Token $creds" -H "Content-Type: application/json" -d '{"email":"user'$i'@domain.com", "first_name": "User'$i'", "last_name": "Lastname'$i'", "groups": ["G441"]}'
done 
