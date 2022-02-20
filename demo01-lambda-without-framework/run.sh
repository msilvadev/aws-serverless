# 1 step - create file of security policies
# 2 step - create security role on AWS IAM

aws iam create-role \
    --role-name lambda-example \
    --assume-role-policy-document file://policies.json \
    | tee logs/role.log # create log file