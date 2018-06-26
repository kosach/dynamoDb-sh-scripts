#!/bin/bash
TABLE_NAME=$1
LOCAL=""
while getopts t:l: option 
do 
 case "${option}" 
 in 
 t) TABLE_NAME=${OPTARG};; 
 l) LOCAL="--endpoint-url http://localhost:${OPTARG}";; 
 esac 
done 

aws dynamodb describe-table --table-name $TABLE_NAME $LOCAL