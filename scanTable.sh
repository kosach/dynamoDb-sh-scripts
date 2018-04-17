#!/bin/bash

TABLE_NAME=$1
echo $TABLE_NAME
aws dynamodb scan --table-name $TABLE_NAME
