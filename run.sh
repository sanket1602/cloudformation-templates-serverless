#!/bin/bash

# Setthe environment variables
export LAMBDA_NAME="lambda_4"
export LAMBDA_CFT_NAME="lambda-4-lambdafuntion"


echo "----------------------------------------"
aws cloudformation update-stack --stack-name $LAMBDA_CFT_NAME --tags Key=Project,Value=InstaGo Key=Owner,Value=MonishParekh Key=Environment,Value=Production Key=Application,Value=InstaGo Key=Name,Value=$LAMBDA_CFT_NAME --template-body file://$LAMBDA_NAME.yml --capabilities CAPABILITY_NAMED_IAM

