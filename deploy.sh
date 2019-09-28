#!/bin/bash
git pull
rm -r dist
yarn build
aws s3 rm s3://fffinfo-frontend/ --recursive --profile marvnet
aws s3 cp ./dist/ s3://fffinfo-frontend/ --recursive --region eu-central-1 --acl public-read --profile marvnet
aws cloudfront create-invalidation --distribution-id EJGPABVC44262 --paths '/*' --profile marvnet
