#!/bin/bash
#set -x

ver=`cat package.json | grep "version" | cut -d: -f2 | sed -e "s/[\"\,]//g" | tr -d '[:space:]'`
token=AWSLambdaRedshiftLoader

echo "Deploying Lambda Redshift Loader $ver to AWSLabs S3 Buckets"

aws-vault exec changesprout -- aws s3 cp dist/$token-$ver.zip s3://changesprout-lambdas-us-east-1/LambdaRedshiftLoader/$token-$ver.zip --acl public-read --region us-east-1;
