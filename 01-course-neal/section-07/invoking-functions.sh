#Invoke function synchronously
aws lambda invoke --function-name MY-FUNCTION-NAME --payload BASE64-STRING reponse.json
aws lambda invoke --function-name MY-FUNCTION-NAME out 

#Invoke function asynchronously

aws lambda invoke --function-name MY-FUNCTION-NAME --invocation-type Event --payload BASE64-STRING reponse.json