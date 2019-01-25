#!/bin/sh

confd -onetime -backend ssm -node=https://ssm.${AWS_REGION}.amazonaws.com

exec $@
