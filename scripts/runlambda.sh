#!/usr/bin/env bash
cd  Lambda

alias python=python3

cp -r src/*.py build

aws cloudformation package --template-file template.yaml --output-template-file serverless-output.yaml --s3-bucket $1-s3-cf-scripts --profile $1
aws cloudformation deploy --template-file serverless-output.yaml --stack-name $1-lambda --capabilities CAPABILITY_NAMED_IAM --parameter-overrides Environment=$1 --profile $1
