aws s3 help 

# List EC2 instances
aws ec2 describe-instances 

# Create a bucket
aws s3 mb s3://my-secret-bucket
# List buckets
aws s3 ls
# Copy a file to the bucket
aws s3 cp README.md s3://my-secret-bucket
# List the contents of the bucket
aws s3 ls s3://my-secret-bucket
# Remove the bucket (force delete when still have files)
aws s3 rb s3://my-secret-bucket --force

aws s3 ls

# List EC2 instances with another profile 
aws ec2 describe-instances --profile ec2-full-access