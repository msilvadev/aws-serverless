# install serverless framework (https://www.serverless.com/)

npm i -g serverless

# check version
serverless -v
# check version with alias
sls -v

# initialize
sls

# always do the deploy
sls deploy

# invoke on AWS
sls invoke -f hello

# invoke local
sls invoke local -f hello --l

# config dashboard
sls

# logs tails
sls logs -f hello --tail 

# remove all inside serverless framework
sls remove