# aws-serverless


Download AWS CLI
    `https://aws.amazon.com/pt/cli/`

## Configure Credentials:

    aws configure 

Fill with your AccessKeyID and SecretAccessKey
    
PS: us-east-1 (N. Virginia is more cheap)

## S3 - Storage:

List files into bucket

    aws s3 ls <bucket_name>

Will copy local file to bucket

    aws s3 cp <file> s3://<bucket>

