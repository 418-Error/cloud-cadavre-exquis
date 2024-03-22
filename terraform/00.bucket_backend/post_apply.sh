#!/usr/bin/bash
set -e
export AWS_ACCESS_KEY_ID=$(terraform output bucket_access_key | sed 's/\"//g')
export AWS_SECRET_ACCESS_KEY=$(terraform output bucket_secret_key | sed 's/\"//g')