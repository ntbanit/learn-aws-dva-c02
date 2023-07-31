# generate root access keys
aws configure --profile root-mfa-delete-demo

#check
aws s3 ls  --profile root-mfa-delete-demo

# enable mfa delete
aws s3api put-bucket-versioning --bucket s3-demo-anntb-origin --versioning-configuration Status=Enabled,MFADelete=Enabled --mfa "arn-of-mfa-device mfa-code" --profile root-mfa-delete-demo

# disable mfa delete
aws s3api put-bucket-versioning --bucket s3-demo-anntb-origin --versioning-configuration Status=Enabled,MFADelete=Disabled --mfa "arn-of-mfa-device mfa-code" --profile root-mfa-delete-demo

# delete the root credentials in the IAM console!!!