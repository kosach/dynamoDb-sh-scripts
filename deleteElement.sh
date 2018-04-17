#!/bin/bash

TABLE_NAME=$1
KEY=$2
echo $TABLE_NAME
aws dynamodb delete-item --table-name $TABLE_NAME --key '{"id": {"S": "'$KEY'"}}'
