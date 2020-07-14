#!/bin/bash

# publish deploy.yaml to regional buckets
for r in `aws ec2 describe-regions --query Regions[*].RegionName --output text`; do aws s3 cp deploy.yaml s3://awslabs-code-$r/LambdaRedshiftLoader/deploy.yaml --acl public-read --region $r; done

for r in `aws ec2 describe-regions --query Regions[*].RegionName --output text`; do aws s3 cp deploy-vpc.yaml s3://awslabs-code-$r/LambdaRedshiftLoader/deploy-vpc.yaml --acl public-read --region $r; done

for r in `aws ec2 describe-regions --query Regions[*].RegionName --output text`; do aws s3 cp deploy-admin-host.yaml s3://awslabs-code-$r/LambdaRedshiftLoader/deploy-admin-host.yaml --acl public-read --region $r; done
