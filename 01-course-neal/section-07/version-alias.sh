# Invoke lambda version 
# run in window (`$ is escape character for $)
aws lambda invoke --function-name MY-SECRET-FUNCTION-NAME:`$LATEST response.json
aws lambda invoke --function-name MY-SECRET-FUNCTION-NAME:1 response.json

# Invoke lambda alias
aws lambda invoke --function-name MY-SECRET-FUNCTION-NAME:MY-SECRET-ALIAS response.json