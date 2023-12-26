#!/bin/bash

#insert the base64 encoded credentials for API access, alternatively create a function to build it
creds=

for i in {501..1000}
                do
                        curl -s -k -X POST https://10.0.0.2/api/v2/projects/ -H "Authorization: Token $creds" -H "Content-Type: application/json" -d '{"application":"1", "name":"project'$i'", "profile": "P1", "answers":["A1159","A1293","A1140","A1143","A1183","A45","A758","A733","A1265","A1262","A731","A190","A683","A728","A740","A195","A174","A1157","A23","A56","A90","A1107","A1268","A1290","A128","A1109","A1142","A1062","A127","A129","A1326","A1073","A1285","A1334","A1253","A1257","A739","A754","A777","A1266","A1267","A734","A737","A735","A1174","A1264","A742","A1164","A736","A1084","A1271","A738","A1291","A1170","A1292","A1226","A1122","A1179","A1169"]}'
done 
