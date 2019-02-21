#!/bin/bash
FILE='./credentials'
echo "[default]" >> $FILE
echo "aws_access_key_id = $AWS_ACCESS_KEY_ID" >> $FILE
echo "aws_secret_access_key = $AWS_SECRET_ACCESS_KEY" >> $FILE
echo "region = $AWS_REGION" >> $FILE
mkdir ~/.aws/
mv ./credentials ~/.aws/credentials
