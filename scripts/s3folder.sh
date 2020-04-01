#!/usr/bin/env bash
aws s3 sync s3folder/ s3://$1-s3-cf --profile $1