#!/bin/bash

############################################



# Author: Zohaib
# Date: 1 October 2023
#

# Version: v2
#
# Using this script to report the daily aws usage
##############################################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# list ec2 resources
echo "Print list of ec2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list Lambda
echo "Print list of lambda"
aws lambda list-functions

# list IAM Users
echo "Print list of IAM Users"
aws iam list-users
