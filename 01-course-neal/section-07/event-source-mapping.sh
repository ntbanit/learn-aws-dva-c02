# Create Lambda function from zip file 
zip function.zip index.js 
aws lambda create-function --function-name MY-SECRET-LAMBDA-FUNCTION-NAME --zip-file fileb://function.zip --handler index.handler --runtime nodejs20.x --role MY-SECRET-ARN-ROLE-SQS-LAMBDA-EXECUTION

# Create event-source mapping 
# Return an UUID of EventSourceMapping 
aws lambda create-event-source-mapping --function-name MY-SECRET-LAMBDA-FUNCTION-NAME --batch-size 10 --event-source-arn MY-SECRET-ARN-SQS

# Return array of EventSourceMappings belong to function which has source-arn is the queue
aws lambda list-event-source-mappings --function-name MY-SECRET-LAMBDA-FUNCTION-NAME --event-source-arn MY-SECRET-ARN-SQS

# delete after practice 
aws lambda delete-event-source-mapping --uuid MY-SECRET-UUID-EVENT-SOURCE-MAPPING

