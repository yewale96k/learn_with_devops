#!/bin/bash
#####################
# Author: Ganesh Raju Yewale
# date: 24 oct 2025
#version: v1
#This script will re t will report the AWS resource page
##########################

set-x

#AWS S3
#AWS
#AWS Lambda
#AWS IAM Users

#list s3 buckets
echo "print list of s3 buckets"
aws s3 ls

#list EC2 instances
echo "print list of ec2 buckets"
aws ec2 describe-instances | jq ' .Reservations[]. Instances[]. InstanceId'

#list lambda
echo "print list of lambda function aws lambda list-functions"
aws lambda list-functions

#list IAM users
echo "List the i am users"
aws iam list-users
