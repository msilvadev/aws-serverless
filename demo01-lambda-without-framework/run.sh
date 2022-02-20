# 1 step - create file of security policies
# 2 step - create security role on AWS IAM

aws iam create-role \
    --role-name lambda-example \
    --assume-role-policy-document file://policies.json \
    | tee logs/role.log # create log file

# 3 step - create file with my function and zip it
zip function.zip index.js

aws lambda create-function \
    --function-name hello-cli \
    --zip-file fileb://function.zip \
    --handler index.handler \
    --runtime nodejs14.x \
    --role arn:aws:iam::893921548210:role/lambda-example \
    | tee logs/lambda-create-function.log


# 4 step - invoke lambda!
aws lambda invoke \
    --function-name hello-cli \
    --log-type Tail \
    logs/lambda-exec.log

# + update function
zip function.zip index.js

aws lambda update-function-code \
    --zip-file fileb://function.zip \
    --function-name hello-cli \
    --publish \
    | tee logs/lupdate-function-code.log

# invoke lambda!
aws lambda invoke \
    --function-name hello-cli \
    --log-type Tail \
    logs/lambda-exec.log

# remove all
aws lambda delete-function \
    --function-name hello-cli

aws iam delete-role \
    --role-name lambda-example