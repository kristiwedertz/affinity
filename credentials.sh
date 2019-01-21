#!/bin/bash

pip install --user awscli

mkdir -p ~/.aws

cat > ~/.aws/credentials << EOL
[default]
aws_access_key_id = ${AWS_ACCESS_KEY_ID}
aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}
EOL

export PATH=$PATH:$HOME/.local/bin

eval $(aws ecr get-login --no-include-email --region us-west-2)

aws ssm get-parameters-by-path --region us-west-2 --with-decryption --path     "/api/affinity/demo/"
 12   | jq -r '.Parameters[] | ([.Name, "\"" + .Value + "\""]) | join("=")' > /t    mp/dev.affinity.ini

sed -i~ 's#/api/affinity/demo/##' /tmp/dev.affinity.ini
mv /tmp/dev.affinity.ini .env
